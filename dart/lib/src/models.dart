/// Response models for the Motor Carrier Lookup API.

/// API Response wrapper.
class MotorcarrierlookupResponse {
  final String status;
  final dynamic error;
  final MotorcarrierlookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MotorcarrierlookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MotorcarrierlookupResponse.fromJson(Map<String, dynamic> json) => MotorcarrierlookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MotorcarrierlookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Motor Carrier Lookup API.

class MotorcarrierlookupData {
  num? dotNumber;
  String? legalName;
  String? dbaName;
  String? status;
  List<String>? entityTypes;
  String? operation;
  List<String>? operationClassifications;
  String? businessType;
  String? registrationDate;
  MotorcarrierlookupDataPhysicaladdress? physicalAddress;
  MotorcarrierlookupDataMailingaddress? mailingAddress;
  String? phone;
  String? fax;
  String? email;
  List<MotorcarrierlookupDataDocketsItem>? dockets;
  MotorcarrierlookupDataFleet? fleet;
  bool? hazmat;
  MotorcarrierlookupDataMcs150? mcs150;
  MotorcarrierlookupDataSafety? safety;
  bool? outOfService;
  List<dynamic>? outOfServiceOrders;
  List<String>? cargoClasses;
  MotorcarrierlookupDataEquipment? equipment;
  String? dunsNumber;
  dynamic priorRevocation;
  MotorcarrierlookupDataAuthority? authority;
  MotorcarrierlookupDataInsurance? insurance;
  MotorcarrierlookupDataDataasof? dataAsOf;

  MotorcarrierlookupData({
    this.dotNumber,
    this.legalName,
    this.dbaName,
    this.status,
    this.entityTypes,
    this.operation,
    this.operationClassifications,
    this.businessType,
    this.registrationDate,
    this.physicalAddress,
    this.mailingAddress,
    this.phone,
    this.fax,
    this.email,
    this.dockets,
    this.fleet,
    this.hazmat,
    this.mcs150,
    this.safety,
    this.outOfService,
    this.outOfServiceOrders,
    this.cargoClasses,
    this.equipment,
    this.dunsNumber,
    this.priorRevocation,
    this.authority,
    this.insurance,
    this.dataAsOf,
  });

  factory MotorcarrierlookupData.fromJson(Map<String, dynamic> json) => MotorcarrierlookupData(
      dotNumber: json['dotNumber'],
      legalName: json['legalName'],
      dbaName: json['dbaName'],
      status: json['status'],
      entityTypes: (json['entityTypes'] as List?)?.cast<String>(),
      operation: json['operation'],
      operationClassifications: (json['operationClassifications'] as List?)?.cast<String>(),
      businessType: json['businessType'],
      registrationDate: json['registrationDate'],
      physicalAddress: json['physicalAddress'] != null ? MotorcarrierlookupDataPhysicaladdress.fromJson(json['physicalAddress']) : null,
      mailingAddress: json['mailingAddress'] != null ? MotorcarrierlookupDataMailingaddress.fromJson(json['mailingAddress']) : null,
      phone: json['phone'],
      fax: json['fax'],
      email: json['email'],
      dockets: (json['dockets'] as List?)?.map((e) => MotorcarrierlookupDataDocketsItem.fromJson(e)).toList(),
      fleet: json['fleet'] != null ? MotorcarrierlookupDataFleet.fromJson(json['fleet']) : null,
      hazmat: json['hazmat'],
      mcs150: json['mcs150'] != null ? MotorcarrierlookupDataMcs150.fromJson(json['mcs150']) : null,
      safety: json['safety'] != null ? MotorcarrierlookupDataSafety.fromJson(json['safety']) : null,
      outOfService: json['outOfService'],
      outOfServiceOrders: (json['outOfServiceOrders'] as List?)?.cast<dynamic>(),
      cargoClasses: (json['cargoClasses'] as List?)?.cast<String>(),
      equipment: json['equipment'] != null ? MotorcarrierlookupDataEquipment.fromJson(json['equipment']) : null,
      dunsNumber: json['dunsNumber'],
      priorRevocation: json['priorRevocation'],
      authority: json['authority'] != null ? MotorcarrierlookupDataAuthority.fromJson(json['authority']) : null,
      insurance: json['insurance'] != null ? MotorcarrierlookupDataInsurance.fromJson(json['insurance']) : null,
      dataAsOf: json['dataAsOf'] != null ? MotorcarrierlookupDataDataasof.fromJson(json['dataAsOf']) : null,
    );
}

class MotorcarrierlookupDataPhysicaladdress {
  String? street;
  String? city;
  String? state;
  String? zip;
  String? country;

  MotorcarrierlookupDataPhysicaladdress({
    this.street,
    this.city,
    this.state,
    this.zip,
    this.country,
  });

  factory MotorcarrierlookupDataPhysicaladdress.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataPhysicaladdress(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zip: json['zip'],
      country: json['country'],
    );
}

class MotorcarrierlookupDataMailingaddress {
  String? street;
  String? city;
  String? state;
  String? zip;
  String? country;

  MotorcarrierlookupDataMailingaddress({
    this.street,
    this.city,
    this.state,
    this.zip,
    this.country,
  });

  factory MotorcarrierlookupDataMailingaddress.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataMailingaddress(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zip: json['zip'],
      country: json['country'],
    );
}

class MotorcarrierlookupDataDocketsItem {
  String? docket;
  String? prefix;
  String? status;

  MotorcarrierlookupDataDocketsItem({
    this.docket,
    this.prefix,
    this.status,
  });

  factory MotorcarrierlookupDataDocketsItem.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataDocketsItem(
      docket: json['docket'],
      prefix: json['prefix'],
      status: json['status'],
    );
}

class MotorcarrierlookupDataFleet {
  num? powerUnits;
  num? trucks;
  num? buses;
  num? drivers;
  num? cdlDrivers;
  num? interstateDrivers;
  num? intrastateDrivers;
  String? sizeBand;

  MotorcarrierlookupDataFleet({
    this.powerUnits,
    this.trucks,
    this.buses,
    this.drivers,
    this.cdlDrivers,
    this.interstateDrivers,
    this.intrastateDrivers,
    this.sizeBand,
  });

  factory MotorcarrierlookupDataFleet.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataFleet(
      powerUnits: json['powerUnits'],
      trucks: json['trucks'],
      buses: json['buses'],
      drivers: json['drivers'],
      cdlDrivers: json['cdlDrivers'],
      interstateDrivers: json['interstateDrivers'],
      intrastateDrivers: json['intrastateDrivers'],
      sizeBand: json['sizeBand'],
    );
}

class MotorcarrierlookupDataMcs150 {
  String? date;
  num? ageDays;
  num? mileage;
  num? mileageYear;

  MotorcarrierlookupDataMcs150({
    this.date,
    this.ageDays,
    this.mileage,
    this.mileageYear,
  });

  factory MotorcarrierlookupDataMcs150.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataMcs150(
      date: json['date'],
      ageDays: json['ageDays'],
      mileage: json['mileage'],
      mileageYear: json['mileageYear'],
    );
}

class MotorcarrierlookupDataSafety {
  String? rating;
  String? ratingDate;
  String? reviewType;
  String? reviewDate;
  dynamic recordableCrashRate;

  MotorcarrierlookupDataSafety({
    this.rating,
    this.ratingDate,
    this.reviewType,
    this.reviewDate,
    this.recordableCrashRate,
  });

  factory MotorcarrierlookupDataSafety.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataSafety(
      rating: json['rating'],
      ratingDate: json['ratingDate'],
      reviewType: json['reviewType'],
      reviewDate: json['reviewDate'],
      recordableCrashRate: json['recordableCrashRate'],
    );
}

class MotorcarrierlookupDataEquipment {
  MotorcarrierlookupDataEquipmentStraighttrucks? straightTrucks;
  MotorcarrierlookupDataEquipmentTractors? tractors;
  MotorcarrierlookupDataEquipmentTrailers? trailers;

  MotorcarrierlookupDataEquipment({
    this.straightTrucks,
    this.tractors,
    this.trailers,
  });

  factory MotorcarrierlookupDataEquipment.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataEquipment(
      straightTrucks: json['straightTrucks'] != null ? MotorcarrierlookupDataEquipmentStraighttrucks.fromJson(json['straightTrucks']) : null,
      tractors: json['tractors'] != null ? MotorcarrierlookupDataEquipmentTractors.fromJson(json['tractors']) : null,
      trailers: json['trailers'] != null ? MotorcarrierlookupDataEquipmentTrailers.fromJson(json['trailers']) : null,
    );
}

class MotorcarrierlookupDataEquipmentStraighttrucks {
  num? owned;
  num? termLeased;
  num? tripLeased;

  MotorcarrierlookupDataEquipmentStraighttrucks({
    this.owned,
    this.termLeased,
    this.tripLeased,
  });

  factory MotorcarrierlookupDataEquipmentStraighttrucks.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataEquipmentStraighttrucks(
      owned: json['owned'],
      termLeased: json['termLeased'],
      tripLeased: json['tripLeased'],
    );
}

class MotorcarrierlookupDataEquipmentTractors {
  num? owned;
  num? termLeased;
  num? tripLeased;

  MotorcarrierlookupDataEquipmentTractors({
    this.owned,
    this.termLeased,
    this.tripLeased,
  });

  factory MotorcarrierlookupDataEquipmentTractors.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataEquipmentTractors(
      owned: json['owned'],
      termLeased: json['termLeased'],
      tripLeased: json['tripLeased'],
    );
}

class MotorcarrierlookupDataEquipmentTrailers {
  num? owned;
  num? termLeased;
  num? tripLeased;

  MotorcarrierlookupDataEquipmentTrailers({
    this.owned,
    this.termLeased,
    this.tripLeased,
  });

  factory MotorcarrierlookupDataEquipmentTrailers.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataEquipmentTrailers(
      owned: json['owned'],
      termLeased: json['termLeased'],
      tripLeased: json['tripLeased'],
    );
}

class MotorcarrierlookupDataAuthority {
  String? common;
  String? contract;
  String? broker;
  MotorcarrierlookupDataAuthorityApplicationpending? applicationPending;
  MotorcarrierlookupDataAuthorityRevocationpending? revocationPending;
  MotorcarrierlookupDataAuthorityAuthorizedfor? authorizedFor;
  String? firstGrantedDate;
  num? authorityAgeDays;

  MotorcarrierlookupDataAuthority({
    this.common,
    this.contract,
    this.broker,
    this.applicationPending,
    this.revocationPending,
    this.authorizedFor,
    this.firstGrantedDate,
    this.authorityAgeDays,
  });

  factory MotorcarrierlookupDataAuthority.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataAuthority(
      common: json['common'],
      contract: json['contract'],
      broker: json['broker'],
      applicationPending: json['applicationPending'] != null ? MotorcarrierlookupDataAuthorityApplicationpending.fromJson(json['applicationPending']) : null,
      revocationPending: json['revocationPending'] != null ? MotorcarrierlookupDataAuthorityRevocationpending.fromJson(json['revocationPending']) : null,
      authorizedFor: json['authorizedFor'] != null ? MotorcarrierlookupDataAuthorityAuthorizedfor.fromJson(json['authorizedFor']) : null,
      firstGrantedDate: json['firstGrantedDate'],
      authorityAgeDays: json['authorityAgeDays'],
    );
}

class MotorcarrierlookupDataAuthorityApplicationpending {
  bool? common;
  bool? contract;
  bool? broker;

  MotorcarrierlookupDataAuthorityApplicationpending({
    this.common,
    this.contract,
    this.broker,
  });

  factory MotorcarrierlookupDataAuthorityApplicationpending.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataAuthorityApplicationpending(
      common: json['common'],
      contract: json['contract'],
      broker: json['broker'],
    );
}

class MotorcarrierlookupDataAuthorityRevocationpending {
  bool? common;
  bool? contract;
  bool? broker;

  MotorcarrierlookupDataAuthorityRevocationpending({
    this.common,
    this.contract,
    this.broker,
  });

  factory MotorcarrierlookupDataAuthorityRevocationpending.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataAuthorityRevocationpending(
      common: json['common'],
      contract: json['contract'],
      broker: json['broker'],
    );
}

class MotorcarrierlookupDataAuthorityAuthorizedfor {
  bool? property;
  bool? passengers;
  bool? householdGoods;
  bool? private;
  bool? enterprise;

  MotorcarrierlookupDataAuthorityAuthorizedfor({
    this.property,
    this.passengers,
    this.householdGoods,
    this.private,
    this.enterprise,
  });

  factory MotorcarrierlookupDataAuthorityAuthorizedfor.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataAuthorityAuthorizedfor(
      property: json['property'],
      passengers: json['passengers'],
      householdGoods: json['householdGoods'],
      private: json['private'],
      enterprise: json['enterprise'],
    );
}

class MotorcarrierlookupDataInsurance {
  num? bipdRequiredUsd;
  num? bipdOnFileUsd;
  bool? cargoRequired;
  bool? cargoOnFile;
  dynamic cargoCoverageUsd;
  bool? bondRequired;
  bool? bondOnFile;
  bool? pendingCancellation;
  dynamic nextCancellationDate;
  List<MotorcarrierlookupDataInsurancePoliciesItem>? policies;

  MotorcarrierlookupDataInsurance({
    this.bipdRequiredUsd,
    this.bipdOnFileUsd,
    this.cargoRequired,
    this.cargoOnFile,
    this.cargoCoverageUsd,
    this.bondRequired,
    this.bondOnFile,
    this.pendingCancellation,
    this.nextCancellationDate,
    this.policies,
  });

  factory MotorcarrierlookupDataInsurance.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataInsurance(
      bipdRequiredUsd: json['bipdRequiredUsd'],
      bipdOnFileUsd: json['bipdOnFileUsd'],
      cargoRequired: json['cargoRequired'],
      cargoOnFile: json['cargoOnFile'],
      cargoCoverageUsd: json['cargoCoverageUsd'],
      bondRequired: json['bondRequired'],
      bondOnFile: json['bondOnFile'],
      pendingCancellation: json['pendingCancellation'],
      nextCancellationDate: json['nextCancellationDate'],
      policies: (json['policies'] as List?)?.map((e) => MotorcarrierlookupDataInsurancePoliciesItem.fromJson(e)).toList(),
    );
}

class MotorcarrierlookupDataInsurancePoliciesItem {
  String? type;
  String? form;
  String? insurer;
  String? policyNumber;
  String? postedDate;
  String? effectiveDate;
  dynamic cancellationDate;
  num? coverageUsd;
  num? underlyingLimitUsd;

  MotorcarrierlookupDataInsurancePoliciesItem({
    this.type,
    this.form,
    this.insurer,
    this.policyNumber,
    this.postedDate,
    this.effectiveDate,
    this.cancellationDate,
    this.coverageUsd,
    this.underlyingLimitUsd,
  });

  factory MotorcarrierlookupDataInsurancePoliciesItem.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataInsurancePoliciesItem(
      type: json['type'],
      form: json['form'],
      insurer: json['insurer'],
      policyNumber: json['policyNumber'],
      postedDate: json['postedDate'],
      effectiveDate: json['effectiveDate'],
      cancellationDate: json['cancellationDate'],
      coverageUsd: json['coverageUsd'],
      underlyingLimitUsd: json['underlyingLimitUsd'],
    );
}

class MotorcarrierlookupDataDataasof {
  String? census;
  String? licensing;
  String? outOfService;

  MotorcarrierlookupDataDataasof({
    this.census,
    this.licensing,
    this.outOfService,
  });

  factory MotorcarrierlookupDataDataasof.fromJson(Map<String, dynamic> json) => MotorcarrierlookupDataDataasof(
      census: json['census'],
      licensing: json['licensing'],
      outOfService: json['outOfService'],
    );
}

class MotorcarrierlookupRequest {
  String? dot;
  String? docket;
  String? mc;
  bool? checks;
  bool? history;
  int? minBipd;
  int? minCargo;
  int? maxMcs150Months;
  int? minAuthorityDays;

  MotorcarrierlookupRequest({
    this.dot,
    this.docket,
    this.mc,
    this.checks,
    this.history,
    this.minBipd,
    this.minCargo,
    this.maxMcs150Months,
    this.minAuthorityDays,
  });

  Map<String, dynamic> toJson() => {
      if (dot != null) 'dot': dot,
      if (docket != null) 'docket': docket,
      if (mc != null) 'mc': mc,
      if (checks != null) 'checks': checks,
      if (history != null) 'history': history,
      if (minBipd != null) 'minBipd': minBipd,
      if (minCargo != null) 'minCargo': minCargo,
      if (maxMcs150Months != null) 'maxMcs150Months': maxMcs150Months,
      if (minAuthorityDays != null) 'minAuthorityDays': minAuthorityDays,
    };
}
