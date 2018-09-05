# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "treant"
  spec.version       = "1.0.0"
  spec.authors       = ["Francesco Rodríguez"]
  spec.email         = ["frodsan@me.com"]

  spec.summary       = "A small helper for your Seeds file."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/frodsan/treant"
  spec.license       = "MIT"

  spec.files      = Dir["LICENSE", "README.md", "lib/**/*.rb"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
