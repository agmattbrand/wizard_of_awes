require "wizard_of_awes/version"
require 'wizard_of_awes/configuration'
require 'wizard_of_awes/helpers'

module WizardOfAwes
  def self.frameworks
    frameworks = ['rails']
    frameworks
  end

  def self.load_framework!
    show_warning if frameworks.empty?
    frameworks.each do |framework|
      begin
        require framework
      rescue NameError => e
        raise "Failed to load framework #{framework.inspect}. Have you added it to Gemfile?"
      end
    end
  end
  
   def self.show_warning
      $stderr.puts <<-EOC
  warning: no framework detected.
  would you check out if your Gemfile appropriately configured?
  ---- e.g. ----
  when Rails:
  gem 'rails'
  gem 'wizard_of_awes'

  EOC
    end
      
    def self.load_wizard_of_awes!
      require 'wizard_of_awes/config'
      require 'wizard_of_awes/helpers'
    end    

    def self.hook!
      load_framework!
      load_wizard_of_awes!
    end

    def self.load!
      hook!
    end

    private
    def self.rails?
      defined?(::Rails)
    end
end

WizardOfAwes.load!
