# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wizard_of_awes/version"

Gem::Specification.new do |s|
  s.name        = "wizard_of_awes"
  s.version     = WizardOfAwes::VERSION
  s.authors     = ["Matt Brand"]
  s.email       = ["agmattbrand@yahoo.com"]
  s.homepage    = "https://github.com/agmattbrand/wizard_of_awes"
  s.summary     = %q{Inline Help Text based on the page slug}
  s.description = %q{Include help text on a page based on its slug.  Includes 1 simple tag and a basic content editor}

  s.rubyforge_project = "wizard_of_awes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails", ">= 3.1.0")
  s.add_dependency("jquery-rails", ">= 1.0.0")  
  s.add_dependency("sass-rails", ">= 3.1.0")
  s.add_dependency("formtastic")
  s.add_dependency("client_side_validations")
end
