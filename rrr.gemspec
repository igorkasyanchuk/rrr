# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rrr/version"

Gem::Specification.new do |spec|
  spec.name          = "rrr-cli"
  spec.version       = Rrr::VERSION
  spec.authors       = ["Igor Kasyanchuk"]
  spec.email         = ["igorkasyanchuk@gmail.com"]

  spec.summary       = %q{Run Recent Rspecs}
  spec.description   = %q{Run only recently changed specs in your app.}
  spec.homepage      = "https://github.com/igorkasyanchuk"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,spec}/**/*", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "Rakefile", "README.rdoc", "bin/rrr"]

  spec.executables   = ["rrr"]
  spec.bindir        = "bin"
  spec.require_paths = ["lib", "bin"]

  spec.add_runtime_dependency "rake"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0"
end
