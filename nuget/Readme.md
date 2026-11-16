Motor Carrier Lookup API
============

Motor Carrier Lookup returns the FMCSA record of a trucking or bus company from its USDOT number or its MC, MX or FF docket number. It covers USDOT status, entity and operation type, addresses, dockets, fleet and driver counts, MCS-150 date, safety rating, out-of-service orders, operating authority status and insurance on file. Paid plans add contact details, cargo classes, equipment, mileage, crash rate, insurance policies, authority history and pass/fail compliance checks with your own thresholds.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.MotorCarrierLookup.svg)](https://www.nuget.org/packages/APIVerve.API.MotorCarrierLookup)

This is a .NET wrapper for the [Motor Carrier Lookup API](https://apiverve.com/marketplace/motorcarrierlookup?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.MotorCarrierLookup
```

Using the Package Manager:
```
nuget install APIVerve.API.MotorCarrierLookup
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.MotorCarrierLookup
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.MotorCarrierLookup"
5. Click on the APIVerve.API.MotorCarrierLookup package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Motor Carrier Lookup API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.MotorCarrierLookup;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MotorCarrierLookupQueryOptions {
            Dot = "80806",
            Docket = "MC135797",
            Mc = "135797",
            Checks = true,
            History = true,
            MinBipd = 750000,
            MinCargo = 100000,
            MaxMcs150Months = 24,
            MinAuthorityDays = 90
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Motor Carrier Lookup API documentation is found here: [https://docs.apiverve.com/ref/motorcarrierlookup](https://docs.apiverve.com/ref/motorcarrierlookup?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Motor Carrier Lookup API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MotorCarrierLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MotorCarrierLookupQueryOptions {
            Dot = "80806",
            Docket = "MC135797",
            Mc = "135797",
            Checks = true,
            History = true,
            MinBipd = 750000,
            MinCargo = 100000,
            MaxMcs150Months = 24,
            MinAuthorityDays = 90
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.MotorCarrierLookup;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MotorCarrierLookupQueryOptions {
            Dot = "80806",
            Docket = "MC135797",
            Mc = "135797",
            Checks = true,
            History = true,
            MinBipd = 750000,
            MinCargo = 100000,
            MaxMcs150Months = 24,
            MinAuthorityDays = 90
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MotorCarrierLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MotorCarrierLookupQueryOptions {
            Dot = "80806",
            Docket = "MC135797",
            Mc = "135797",
            Checks = true,
            History = true,
            MinBipd = 750000,
            MinCargo = 100000,
            MaxMcs150Months = 24,
            MinAuthorityDays = 90
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.MotorCarrierLookup;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new MotorCarrierLookupQueryOptions {
            Dot = "80806",
            Docket = "MC135797",
            Mc = "135797",
            Checks = true,
            History = true,
            MinBipd = 750000,
            MinCargo = 100000,
            MaxMcs150Months = 24,
            MinAuthorityDays = 90
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new MotorCarrierLookupQueryOptions {
    Dot = "80806",
    Docket = "MC135797",
    Mc = "135797",
    Checks = true,
    History = true,
    MinBipd = 750000,
    MinCargo = 100000,
    MaxMcs150Months = 24,
    MinAuthorityDays = 90
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new MotorCarrierLookupQueryOptions {
    Dot = "80806",
    Docket = "MC135797",
    Mc = "135797",
    Checks = true,
    History = true,
    MinBipd = 750000,
    MinCargo = 100000,
    MaxMcs150Months = 24,
    MinAuthorityDays = 90
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new MotorCarrierLookupQueryOptions {
    Dot = "80806",
    Docket = "MC135797",
    Mc = "135797",
    Checks = true,
    History = true,
    MinBipd = 750000,
    MinCargo = 100000,
    MaxMcs150Months = 24,
    MinAuthorityDays = 90
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new MotorCarrierLookupQueryOptions {
    Dot = "80806",
    Docket = "MC135797",
    Mc = "135797",
    Checks = true,
    History = true,
    MinBipd = 750000,
    MinCargo = 100000,
    MaxMcs150Months = 24,
    MinAuthorityDays = 90
};

using (var apiClient = new MotorCarrierLookupAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
