# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gw2/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'gw2-api'
  spec.version       = Gw2::Api::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['David Hollinger III']
  spec.email         = ['david.hollinger@moduletux.com']

  spec.summary       = 'REST Client into the Guild Wars 2 API'
  spec.description   = 'REST Client for Ruby and Rails for the Guild Wars 2 REST API'
  spec.homepage      = 'https://github.com/dhollinger/gw2-api'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'json'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
