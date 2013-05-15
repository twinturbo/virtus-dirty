# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus/dirty/version'

Gem::Specification.new do |spec|
  spec.name          = "virtus-dirty"
  spec.version       = Virtus::Dirty::VERSION
  spec.authors       = ["twinturbo"]
  spec.email         = ["me@broadcastingadam.com"]
  spec.description   = %q{Dirty Tracking for Virtus objects}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/twinturbo/virtus-dirty"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', '~> 0.5.4'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end

