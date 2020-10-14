# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rmagick/extract_object/version'

Gem::Specification.new do |spec|
  spec.name          = "rmagick-extract_object"
  spec.version       = Magick::ExtractObject::VERSION
  spec.authors       = ["shiro16"]
  spec.email         = ["nyanyanyawan24@gmail.com"]

  spec.summary       = %q{Extracting the object from the image}
  spec.description   = %q{Extracting the object from the image}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rmagick', '> 3.0.0'
  spec.add_dependency 'mimemagic', '~> 0.3.0'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
