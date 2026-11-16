# [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Motor Carrier Lookup returns the FMCSA record of a trucking or bus company from its USDOT number or its MC, MX or FF docket number. It covers USDOT status, entity and operation type, addresses, dockets, fleet and driver counts, MCS-150 date, safety rating, out-of-service orders, operating authority status and insurance on file. Paid plans add contact details, cargo classes, equipment, mileage, crash rate, insurance policies, authority history and pass/fail compliance checks with your own thresholds.

The Motor Carrier Lookup API provides a simple, reliable way to integrate motor carrier lookup functionality into your applications. Built for developers who need production-ready motor carrier lookup capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/motorcarrierlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/motorcarrierlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/motorcarrierlookup)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MotorCarrierLookup)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-motorcarrierlookup/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_motorcarrierlookup)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/motorcarrierlookup)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_motorcarrierlookup)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMotorCarrierLookupAPI() {
    try {
        const params = new URLSearchParams({
            dot: '80806',
            docket: 'MC135797',
            mc: '135797'
        });

        const response = await fetch(`https://api.apiverve.com/v1/motorcarrierlookup?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMotorCarrierLookupAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/motorcarrierlookup?dot=80806&docket=MC135797&mc=135797" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/motorcarrierlookup
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/motorcarrierlookup) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MotorCarrierLookup
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MotorCarrierLookup) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-motorcarrierlookup
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-motorcarrierlookup/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_motorcarrierlookup
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_motorcarrierlookup) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/motorcarrierlookup
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/motorcarrierlookup) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_motorcarrierlookup
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_motorcarrierlookup) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:motorcarrierlookup-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/motorcarrierlookup-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/motorcarrierlookup](https://docs.apiverve.com/ref/motorcarrierlookup)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Motor Carrier Lookup API is commonly used for:

- **Web Applications** - Add motor carrier lookup features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with motor carrier lookup capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Motor Carrier Lookup API:

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

---

## Support & Community

- 🏠 **API Home**: [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
