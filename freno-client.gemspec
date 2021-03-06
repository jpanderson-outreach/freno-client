# -- encoding: utf-8 --
$:.unshift File.expand_path("../lib", __FILE__)
require_relative "lib/freno/client/version"

Gem::Specification.new do |spec|
  spec.name                  = "freno-client"
  spec.version               = Freno::Client::VERSION
  spec.authors               = ["Miguel Fernández"]
  spec.email                 = ["opensource+freno-client@github.com"]

  spec.summary               = %q{A library for interacting with freno, the throttler service}
  spec.description           = %q{freno-client is a ruby library that interacts with
                                  Freno using HTTP. Freno is a throttling service and its
                                  source code is available at https://github.com/github/freno}
  spec.homepage              = "https://github.com/github/freno-client"
  spec.license               = "MIT"
  spec.required_ruby_version = ">= 2.0.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5"
  spec.add_development_dependency "faraday", "~> 0"
end
