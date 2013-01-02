# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/klarna/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', '~> 1.0'

  gem.authors       = ["Guy Rozen"]
  gem.email         = ["guy.rozen@klarna.com"]
  gem.description   = %q{An OmniAuth 1.0 oauth2 strategy for Klarna}
  gem.summary       = %q{This gem will simplify authenticating with Klarna using OAuth 2.0}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-klarna"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Klarna::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2'

  gem.add_development_dependency 'rspec', '~> 2.6.0'
  gem.add_development_dependency 'rake'
end
