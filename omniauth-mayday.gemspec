# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/mayday/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-mayday"
  spec.version       = OmniAuth::Mayday::VERSION
  spec.authors       = ["Ignacio Mella"]
  spec.email         = ["ignacio@acid.cl"]

  spec.summary       = "MayDay OAuth2 Strategy for OmniAuth"
  spec.homepage      = "https://github.com/acidlabs/omniauth-mayday"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth2", "~> 1.2"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
