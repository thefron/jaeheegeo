# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jaeheegeo/version"

Gem::Specification.new do |s|
  s.name        = "jaeheegeo"
  s.version     = Jaeheegeo::VERSION
  s.authors     = ["Hoseong Hwang"]
  s.email       = ["thefron@wafflestudio.com"]
  s.homepage    = "http://thefron.me"
  s.summary     = %q{Simple web application for geoip}
  s.description = %q{Simple web application for geoip}

  s.rubyforge_project = "jaeheegeo"

  s.add_dependency "activesupport"
  s.add_dependency "sinatra"
  s.add_dependency "thin"
  s.add_dependency "autometal-geoip"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  #s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.executables   = ["jaeheegeo"]
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
