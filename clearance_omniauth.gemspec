$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'clearance_omniauth/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'clearance_omniauth'
  s.version     = ClearanceOmniauth::VERSION
  s.authors     = ['Dmitry Zuev']
  s.email       = ['mail@dzuev.ru']
  s.homepage    = 'https://github.com/dmitryzuev/clearance_omniauth'
  s.summary     = 'Omniauth integration with Thoughtbot Clearance'
  s.description = 'Omniauth integration with Thoughtbot Clearance'
  s.license     = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ['lib']
  s.required_ruby_version = Gem::Requirement.new('>= 2.0')

  s.add_dependency 'rails', '~> 4.2'

  # s.add_development_dependency 'sqlite3'
end
