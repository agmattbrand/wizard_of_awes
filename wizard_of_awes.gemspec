# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wizard_of_awes/version"

Gem::Specification.new do |s|
  s.name        = "wizard_of_awes"
  s.version     = WizardOfAwes::VERSION
  s.authors     = ["Matt Brand"]
  s.email       = ["agmattbrand@yahoo.com"]
  s.homepage    = "https://github.com/agmattbrand/wizard_of_awes"
  s.summary     = %q{Wizard UI to step through building complex data sets}
  s.description = %q{Allows you to specify models and columns to include in a Wizard UI to step through building a complex, and awesome, result set}

  s.rubyforge_project = "wizard_of_awes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
