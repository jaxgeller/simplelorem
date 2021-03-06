# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplelorem/version'

Gem::Specification.new do |spec|
  spec.name          = "simplelorem"
  spec.version       = Simplelorem::VERSION
  spec.authors       = ["jaxgeller"]
  spec.email         = ["jacksongeller@gmail.com"]
  spec.license       = "MIT"

  spec.summary       = "a bring-your-own-training-text lorem ipsum generator."
  spec.homepage      = "https://github.com/jaxgeller/simplelorem"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
