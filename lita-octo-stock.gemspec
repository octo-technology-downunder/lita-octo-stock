Gem::Specification.new do |spec|
  spec.name          = "lita-octo-stock"
  spec.version       = "0.0.1"
  spec.authors       = ["David Alia"]
  spec.email         = ["dalia@octo.com"]
  spec.description   = %q{A Lita handler that displays OCTO stock price}
  spec.summary       = %q{A Lita handler that displays OCTO stock price}
  spec.homepage      = "https://github.com/octo-technology-downunder/lita-octo-stock"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"

  spec.metadata = { "lita_plugin_type" => "handler" }
end
