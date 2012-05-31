# -*- encoding: utf-8 -*-
require File.expand_path('../lib/happy-cli/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{Command line tool for the Happy web application toolkit.}
  gem.summary       = %q{Command line tool for the Happy web application toolkit.}
  gem.homepage      = "https://github.com/hmans/happy-cli"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "happy-cli"
  gem.require_paths = ["lib"]
  gem.version       = HappyCLI::VERSION

  gem.add_dependency 'thor', '~> 0.15'
end
