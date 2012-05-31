# -*- encoding: utf-8 -*-
require File.expand_path('../lib/happy-cli/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{CLI tool for Happy, the happy web application framework for Ruby.}
  gem.summary       = %q{CLI tool for Happy, the happy web application framework for Ruby.}
  gem.homepage      = "https://github.com/hmans/happy-cli"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "happy-cli"
  gem.require_paths = ["lib"]
  gem.version       = Happy::Cli::VERSION
end
