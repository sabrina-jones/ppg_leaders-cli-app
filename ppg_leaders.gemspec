# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ppg_leaders/version'

Gem::Specification.new do |spec|
  spec.name          = "ppg_leaders"
  spec.version       = PpgLeaders::VERSION
  spec.authors       = ["'Sabrina Jones'"]
  spec.email         = ["'sabrina.jones87@gmail.com'"]

  spec.summary       = "A gem for displaying information about ppg leaders for the Cleveland Cavaliers"
  spec.homepage      = "https://github.com/sabrina-jones/ppg_leaders-cli-app"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
