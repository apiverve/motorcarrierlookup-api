import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

/// Validation rule for a parameter.
class ValidationRule {
  final String type;
  final bool required;
  final num? min;
  final num? max;
  final int? minLength;
  final int? maxLength;
  final String? format;
  final List<String>? enumValues;

  const ValidationRule({
    required this.type,
    required this.required,
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.format,
    this.enumValues,
  });
}

/// Exception thrown when parameter validation fails.
class MotorcarrierlookupValidationException implements Exception {
  final List<String> errors;

  MotorcarrierlookupValidationException(this.errors);

  @override
  String toString() => 'MotorcarrierlookupValidationException: ${errors.join("; ")}';
}

/// Format validation patterns.
final _formatPatterns = {
  'email': RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$'),
  'url': RegExp(r'^https?://.+'),
  'ip': RegExp(r'^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$'),
  'date': RegExp(r'^\d{4}-\d{2}-\d{2}$'),
  'hexColor': RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'),
};

/// Motor Carrier Lookup API client.
///
/// For more information, visit: https://apiverve.com/marketplace/motorcarrierlookup?utm_source=dart&utm_medium=referral&utm_content=readme
///
/// Parameters:
/// * [dot] - USDOT number, for example 80806. Use dot, docket or mc [maxLength: 12]
/// * [docket] - Docket number with its prefix: MC, MX or FF, for example MC135797 [maxLength: 12]
/// * [mc] - MC number without the prefix, for example 135797 [maxLength: 10]
/// * [checks] - Add pass/fail compliance checks against the thresholds below
/// * [history] - Add authority history and revocations
/// * [minBipd] - Compliance threshold: minimum BI&PD insurance on file in US dollars [min: 0]
/// * [minCargo] - Compliance threshold: minimum cargo insurance in US dollars; 0 skips the check [min: 0]
/// * [maxMcs150Months] - Compliance threshold: the MCS-150 must be updated within this many months [min: 1]
/// * [minAuthorityDays] - Compliance threshold: minimum days since operating authority was first granted [min: 0]
class MotorcarrierlookupClient {
  final String apiKey;
  final String baseUrl;
  final http.Client _httpClient;

  /// Validation rules for parameters.
  static final Map<String, ValidationRule> _validationRules = <String, ValidationRule>{
    'dot': ValidationRule(type: 'string', required: false, maxLength: 12),
    'docket': ValidationRule(type: 'string', required: false, maxLength: 12),
    'mc': ValidationRule(type: 'string', required: false, maxLength: 10),
    'checks': ValidationRule(type: 'boolean', required: false),
    'history': ValidationRule(type: 'boolean', required: false),
    'minBipd': ValidationRule(type: 'integer', required: false, min: 0),
    'minCargo': ValidationRule(type: 'integer', required: false, min: 0),
    'maxMcs150Months': ValidationRule(type: 'integer', required: false, min: 1),
    'minAuthorityDays': ValidationRule(type: 'integer', required: false, min: 0),
  };

  MotorcarrierlookupClient(this.apiKey, {
    this.baseUrl = 'https://api.apiverve.com/v1/motorcarrierlookup',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  /// Validates parameters against defined rules.
  /// Throws [MotorcarrierlookupValidationException] if validation fails.
  void _validateParams(Map<String, dynamic> params) {
    final errors = <String>[];

    for (final entry in _validationRules.entries) {
      final paramName = entry.key;
      final rule = entry.value;
      final value = params[paramName];

      // Check required
      if (rule.required && (value == null || (value is String && value.isEmpty))) {
        errors.add('Required parameter [$paramName] is missing');
        continue;
      }

      if (value == null) continue;

      // Type-specific validation
      if (rule.type == 'integer' || rule.type == 'number') {
        final numValue = value is num ? value : num.tryParse(value.toString());
        if (numValue == null) {
          errors.add('Parameter [$paramName] must be a valid ${rule.type}');
          continue;
        }
        if (rule.min != null && numValue < rule.min!) {
          errors.add('Parameter [$paramName] must be at least ${rule.min}');
        }
        if (rule.max != null && numValue > rule.max!) {
          errors.add('Parameter [$paramName] must be at most ${rule.max}');
        }
      } else if (rule.type == 'string' && value is String) {
        if (rule.minLength != null && value.length < rule.minLength!) {
          errors.add('Parameter [$paramName] must be at least ${rule.minLength} characters');
        }
        if (rule.maxLength != null && value.length > rule.maxLength!) {
          errors.add('Parameter [$paramName] must be at most ${rule.maxLength} characters');
        }
        if (rule.format != null && _formatPatterns.containsKey(rule.format)) {
          if (!_formatPatterns[rule.format]!.hasMatch(value)) {
            errors.add('Parameter [$paramName] must be a valid ${rule.format}');
          }
        }
      }

      // Enum validation
      if (rule.enumValues != null && rule.enumValues!.isNotEmpty) {
        if (!rule.enumValues!.contains(value.toString())) {
          errors.add('Parameter [$paramName] must be one of: ${rule.enumValues!.join(", ")}');
        }
      }
    }

    if (errors.isNotEmpty) {
      throw MotorcarrierlookupValidationException(errors);
    }
  }

  /// Execute a request to the Motor Carrier Lookup API.
  ///
  /// Parameters are validated before sending the request.
  Future<MotorcarrierlookupResponse> execute(Map<String, dynamic> params) async {
    // Validate parameters
    _validateParams(params);
    if (apiKey.isEmpty) {
      throw MotorcarrierlookupException('API key is required. Get your API key at: https://apiverve.com');
    }

    try {
      final uri = Uri.parse(baseUrl).replace(
        queryParameters: params.map((key, value) => MapEntry(key, value.toString())),
      );

      final response = await _httpClient.get(
        uri,
        headers: {
          'x-api-key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return MotorcarrierlookupResponse.fromJson(json);
      } else if (response.statusCode == 401) {
        throw MotorcarrierlookupException('Invalid API key');
      } else if (response.statusCode == 404) {
        throw MotorcarrierlookupException('Resource not found');
      } else {
        throw MotorcarrierlookupException('API error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is MotorcarrierlookupException) rethrow;
      throw MotorcarrierlookupException('Request failed: $e');
    }
  }


  /// Close the HTTP client.
  void close() {
    _httpClient.close();
  }
}

/// Exception thrown by the Motor Carrier Lookup API client.
class MotorcarrierlookupException implements Exception {
  final String message;

  MotorcarrierlookupException(this.message);

  @override
  String toString() => 'MotorcarrierlookupException: $message';
}
