# Motor Carrier Lookup API

Motor Carrier Lookup returns the FMCSA record of a trucking or bus company from its USDOT number or its MC, MX or FF docket number. It covers USDOT status, entity and operation type, addresses, dockets, fleet and driver counts, MCS-150 date, safety rating, out-of-service orders, operating authority status and insurance on file. Paid plans add contact details, cargo classes, equipment, mileage, crash rate, insurance policies, authority history and pass/fail compliance checks with your own thresholds.

[![npm version](https://img.shields.io/npm/v/@apiverve/motorcarrierlookup.svg)](https://www.npmjs.com/package/@apiverve/motorcarrierlookup)

This is a JavaScript wrapper for the [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/motorcarrierlookup
```

Using yarn:
```shell
yarn add @apiverve/motorcarrierlookup
```

---

## Configuration

Before using the Motor Carrier Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Motor Carrier Lookup API documentation is found here: [https://docs.apiverve.com/ref/motorcarrierlookup](https://docs.apiverve.com/ref/motorcarrierlookup?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const motorcarrierlookupAPI = require('@apiverve/motorcarrierlookup');
const api = new motorcarrierlookupAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  dot: "80806",
  docket: "MC135797",
  mc: "135797",
  checks: false,
  history: false,
  minBipd: 750000,
  minCargo: 0,
  maxMcs150Months: 24,
  minAuthorityDays: 0
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  dot: "80806",
  docket: "MC135797",
  mc: "135797",
  checks: false,
  history: false,
  minBipd: 750000,
  minCargo: 0,
  maxMcs150Months: 24,
  minAuthorityDays: 0
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  dot: "80806",
  docket: "MC135797",
  mc: "135797",
  checks: false,
  history: false,
  minBipd: 750000,
  minCargo: 0,
  maxMcs150Months: 24,
  minAuthorityDays: 0
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
