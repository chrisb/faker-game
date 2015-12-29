# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faker/game/version'

Gem::Specification.new do |spec|
  spec.name          = "faker-game"
  spec.version       = Faker::Game::VERSION
  spec.authors       = ["Chris Bielinski"]
  spec.email         = ["cbielinski@payoff.com"]
  spec.summary       = 'Faker extension for generating game names, player usernames, achievements, etc.'
  spec.description   = 'Faker extension for generating game names, player usernames, achievements, etc. Useful for faking anything related to games though specfically focused on shooters and RPG-type elements.'
  spec.homepage      = 'https://github.com/chrisb/faker-game'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.licenses      = %w(MIT)
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'faker', '~> 1'
  spec.add_dependency 'activesupport', '~> 4'
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
