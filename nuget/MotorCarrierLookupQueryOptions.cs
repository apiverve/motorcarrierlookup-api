using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MotorCarrierLookup
{
    /// <summary>
    /// Query options for the Motor Carrier Lookup API
    /// </summary>
    public class MotorCarrierLookupQueryOptions
    {
        /// <summary>
        /// USDOT number, for example 80806. Use dot, docket or mc
        /// </summary>
        [JsonProperty("dot")]
        public string Dot { get; set; }

        /// <summary>
        /// Docket number with its prefix: MC, MX or FF, for example MC135797
        /// </summary>
        [JsonProperty("docket")]
        public string Docket { get; set; }

        /// <summary>
        /// MC number without the prefix, for example 135797
        /// </summary>
        [JsonProperty("mc")]
        public string Mc { get; set; }

        /// <summary>
        /// Add pass/fail compliance checks against the thresholds below
        /// </summary>
        [JsonProperty("checks")]
        public bool? Checks { get; set; }

        /// <summary>
        /// Add authority history and revocations
        /// </summary>
        [JsonProperty("history")]
        public bool? History { get; set; }

        /// <summary>
        /// Compliance threshold: minimum BI&PD insurance on file in US dollars
        /// </summary>
        [JsonProperty("minBipd")]
        public int? MinBipd { get; set; }

        /// <summary>
        /// Compliance threshold: minimum cargo insurance in US dollars; 0 skips the check
        /// </summary>
        [JsonProperty("minCargo")]
        public int? MinCargo { get; set; }

        /// <summary>
        /// Compliance threshold: the MCS-150 must be updated within this many months
        /// </summary>
        [JsonProperty("maxMcs150Months")]
        public int? MaxMcs150Months { get; set; }

        /// <summary>
        /// Compliance threshold: minimum days since operating authority was first granted
        /// </summary>
        [JsonProperty("minAuthorityDays")]
        public int? MinAuthorityDays { get; set; }
    }
}
