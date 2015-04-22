# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zimilar/version'

Gem::Specification.new do |spec|
  spec.name          = "zimilar"
  spec.version       = Zimilar::VERSION
  spec.authors       = ["Konrad Lother"]
  spec.email         = ["konrad@corpex.de"]
  spec.summary       = %q{This small gem extends your shell to autocorrect inputs that would led in a 'command not found'.}
  spec.description   = %q{This small gem extends your shell to autocorrect inputs that would led in a 'command not found'.}
  spec.homepage      = "https://github.com/lotherk/zimilar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "similar_text"
end
