# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ie_headers/version'

Gem::Specification.new do |spec|
  spec.name          = "ie_headers"
  spec.version       = IeHeaders::VERSION
  spec.authors       = ["davpcunn"]
  spec.email         = ["david@preferral.com"]

  spec.summary       = %q{Disables IE Compatability Mode for rack applications.}
  spec.description   = %q{Rack middleware that adds an HTTP header that Internet Explorer loads your responses with the latest availble version.}
  spec.homepage      = "https://github.com/davpcunn/IEHeaders"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
