# Motor Carrier Lookup API - Dart/Flutter Client

Motor Carrier Lookup returns the FMCSA record of a trucking or bus company from its USDOT number or its MC, MX or FF docket number. It covers USDOT status, entity and operation type, addresses, dockets, fleet and driver counts, MCS-150 date, safety rating, out-of-service orders, operating authority status and insurance on file. Paid plans add contact details, cargo classes, equipment, mileage, crash rate, insurance policies, authority history and pass/fail compliance checks with your own thresholds.

[![pub package](https://img.shields.io/pub/v/apiverve_motorcarrierlookup.svg)](https://pub.dev/packages/apiverve_motorcarrierlookup)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_motorcarrierlookup: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_motorcarrierlookup/apiverve_motorcarrierlookup.dart';

void main() async {
  final client = MotorcarrierlookupClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'dot': '80806',
      'docket': 'MC135797',
      'mc': '135797',
      'checks': true,
      'history': true,
      'minBipd': 750000,
      'minCargo': 100000,
      'maxMcs150Months': 24,
      'minAuthorityDays': 90
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "dotNumber": 80806,
    "legalName": "J B HUNT TRANSPORT INC",
    "dbaName": "J B HUNT",
    "status": "active",
    "entityTypes": [
      "freight_forwarder",
      "carrier",
      "shipper",
      "broker"
    ],
    "operation": "interstate",
    "operationClassifications": [
      "AUTHORIZED FOR HIRE"
    ],
    "businessType": "corporation",
    "registrationDate": "1974-06-01",
    "physicalAddress": {
      "street": "615 J B HUNT CORPORATE DRIVE",
      "city": "LOWELL",
      "state": "AR",
      "zip": "72745",
      "country": "US"
    },
    "mailingAddress": {
      "street": "615 J B HUNT CORPORATE DRIVE",
      "city": "LOWELL",
      "state": "AR",
      "zip": "72745",
      "country": "US"
    },
    "phone": "4798200000",
    "fax": "4798204566",
    "email": "lee.sarratt@jbhunt.com",
    "dockets": [
      {
        "docket": "MC135797",
        "prefix": "MC",
        "status": "active"
      },
      {
        "docket": "FF051075",
        "prefix": "FF",
        "status": "active"
      }
    ],
    "fleet": {
      "powerUnits": 25280,
      "trucks": 25280,
      "buses": 0,
      "drivers": 24116,
      "cdlDrivers": 23669,
      "interstateDrivers": 24116,
      "intrastateDrivers": 0,
      "sizeBand": "1000+"
    },
    "hazmat": true,
    "mcs150": {
      "date": "2025-07-07",
      "ageDays": 495,
      "mileage": 1629835251,
      "mileageYear": 2024
    },
    "safety": {
      "rating": "satisfactory",
      "ratingDate": "1992-05-08",
      "reviewType": "compliance_review",
      "reviewDate": "1992-01-31",
      "recordableCrashRate": null
    },
    "outOfService": false,
    "outOfServiceOrders": [],
    "cargoClasses": [
      "General Freight",
      "Metal: Sheets, Coils, Rolls",
      "Motor Vehicles",
      "Logs, Poles, Beams, Lumber",
      "Building Materials",
      "Fresh Produce",
      "Liquids/Gases",
      "Intermodal Containers",
      "Oilfield Equipment",
      "Livestock",
      "Grain, Feed, Hay",
      "Meat",
      "US Mail",
      "Chemicals",
      "Commodities Dry Bulk",
      "Refrigerated Food",
      "Beverages",
      "Paper Products",
      "Agricultural/Farm Supplies",
      "Construction",
      "Other: IEP"
    ],
    "equipment": {
      "straightTrucks": {
        "owned": 874,
        "termLeased": 415,
        "tripLeased": 0
      },
      "tractors": {
        "owned": 20871,
        "termLeased": 3120,
        "tripLeased": 0
      },
      "trailers": {
        "owned": 146851,
        "termLeased": 5330,
        "tripLeased": 0
      }
    },
    "dunsNumber": "6338552",
    "priorRevocation": null,
    "authority": {
      "common": "active",
      "contract": "active",
      "broker": "active",
      "applicationPending": {
        "common": false,
        "contract": false,
        "broker": false
      },
      "revocationPending": {
        "common": false,
        "contract": false,
        "broker": false
      },
      "authorizedFor": {
        "property": true,
        "passengers": false,
        "householdGoods": true,
        "private": false,
        "enterprise": false
      },
      "firstGrantedDate": "1976-12-06",
      "authorityAgeDays": 18240
    },
    "insurance": {
      "bipdRequiredUsd": 1000000,
      "bipdOnFileUsd": 3500000,
      "cargoRequired": true,
      "cargoOnFile": true,
      "cargoCoverageUsd": null,
      "bondRequired": true,
      "bondOnFile": true,
      "pendingCancellation": false,
      "nextCancellationDate": null,
      "policies": [
        {
          "type": "BIPD/Excess",
          "form": "91X",
          "insurer": "ACE AMERICAN INSURANCE COMPANY",
          "policyNumber": "XSAH11347472",
          "postedDate": "2026-04-21",
          "effectiveDate": "2025-12-31",
          "cancellationDate": null,
          "coverageUsd": 2500000,
          "underlyingLimitUsd": 500000
        },
        {
          "type": "CARGO",
          "form": "83",
          "insurer": "TRAVELERS CASUALTY &  SURETY  CO. OF AMERICA",
          "policyNumber": "105917743",
          "postedDate": "2023-10-23",
          "effectiveDate": "2023-10-23",
          "cancellationDate": null,
          "coverageUsd": 0,
          "underlyingLimitUsd": 0
        },
        {
          "type": "SURETY",
          "form": "84",
          "insurer": "TRAVELERS CASUALTY &  SURETY  CO. OF AMERICA",
          "policyNumber": "105917743",
          "postedDate": "2013-12-31",
          "effectiveDate": "2014-01-13",
          "cancellationDate": null,
          "coverageUsd": 0,
          "underlyingLimitUsd": 0
        },
        {
          "type": "BIPD/Primary",
          "form": "91X",
          "insurer": "SELF-INSURED",
          "policyNumber": "NONE",
          "postedDate": "2019-07-15",
          "effectiveDate": "1993-03-01",
          "cancellationDate": null,
          "coverageUsd": 1000000,
          "underlyingLimitUsd": 0
        }
      ]
    },
    "dataAsOf": {
      "census": "2026-11-14T07:58:48.003Z",
      "licensing": "2026-11-14T07:58:48.003Z",
      "outOfService": "2026-11-14T07:58:54.373Z"
    }
  }
}
```

## API Reference

- **API Home:** [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/motorcarrierlookup](https://docs.apiverve.com/ref/motorcarrierlookup?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
