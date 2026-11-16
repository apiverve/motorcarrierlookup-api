# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_motorcarrierlookup"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Motor Carrier Lookup API - Ruby Client"
  spec.description   = "Motor Carrier Lookup returns the FMCSA record of a trucking or bus company from its USDOT number or its MC, MX or FF docket number. It covers USDOT status, entity and operation type, addresses, dockets, fleet and driver counts, MCS-150 date, safety rating, out-of-service orders, operating authority status and insurance on file. Paid plans add contact details, cargo classes, equipment, mileage, crash rate, insurance policies, authority history and pass/fail compliance checks with your own thresholds."
  spec.homepage      = "https://apiverve.com/marketplace/motorcarrierlookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/motorcarrierlookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/motorcarrierlookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
