/**
 * Basic Example - Motor Carrier Lookup API
 *
 * This example demonstrates how to use the Motor Carrier Lookup API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const motorcarrierlookupAPI = require('../index.js');

// Initialize the API client
const api = new motorcarrierlookupAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
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

// Make the API request using callback
console.log('Making request to Motor Carrier Lookup API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
