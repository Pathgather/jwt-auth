# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jwt/auth/version'

Gem::Specification.new do |spec|
  spec.name          = "jwt-auth"
  spec.version       = Jwt::Auth::VERSION
  spec.authors       = ["Jamie Davidson"]
  spec.email         = ["jamie@pathgather.com"]
  spec.description   = spec.summary = "Authentication for Rails APIs using JSON Web Tokens"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "jwt", "~> 0.1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.0"
end
