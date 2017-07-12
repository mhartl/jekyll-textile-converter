# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-latex/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-latex"
  spec.version       = Jekyll::Latex::VERSION
  spec.authors       = ["Michael Hartl"]
  spec.email         = ["michael@michaelhartl.com"]
  spec.summary       = %q{Latex converter for Jekyll.}
  spec.homepage      = "https://github.com/mhartl/jekyll-latex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "polytexnic", "~> 1.3"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
