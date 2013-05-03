# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dojo_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "dojo_rails"
  spec.version       = DojoRails::VERSION
  spec.authors       = ["vadivelan"]
  spec.email         = ["reachme.vadivelan@gmail.com"]
  spec.description   = %q{Dojo Dijit javascript framework on rails}
  spec.summary       = %q{Use dojo dijit in rails and gets the advantages of AMD browser compatibility and more}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
