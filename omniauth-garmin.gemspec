$:.push File.expand_path("../lib", __FILE__)
require "omniauth-garmin/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-garmin"
  s.version     = OmniAuth::Garmin::VERSION
  s.authors     = ["Mathias Kolehmainen"]
  s.email       = ["mathias@countit.com"]
  s.homepage    = "https://github.com/kirillivanov/omniauth-garmin"
  s.summary     = %q{Garmin connect strategy for OmniAuth.}
  s.description = %q{Garmin connect strategy for OmniAuth.}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  # s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_runtime_dependency 'multi_xml'
  # s.add_development_dependency 'rspec', '~> 2.7'
end