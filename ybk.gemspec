# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ybk/version'

Gem::Specification.new do |gem|
  gem.name          = "ybk"
  gem.version       = Ybk::VERSION
  gem.authors       = ["harish"]
  gem.email         = ["bkholyharish@gmail.com"]
  gem.description   = %q{testing gem}
  gem.summary       = %q{demo code to test gem }
  gem.homepage      = ""
  gem.has_rdoc      = 'yard'
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
