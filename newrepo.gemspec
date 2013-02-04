# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrepo/version'

Gem::Specification.new do |gem|
  gem.add_dependency "colorize"
  gem.add_dependency "highline"
  gem.name          = "newrepo"
  gem.version       = Newrepo::VERSION
  gem.authors       = ["Spencer Leopold"]
  gem.email         = ["sleopold@contextllc.com"]
  gem.description   = %q{Tool to create a new bitbucket repo from the command line}
  gem.summary       = %q{Tool to create a new bitbucket repo from the command line}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = ["nr"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
