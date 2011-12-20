module WizardOfAwes
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'wizard_of_awes' do |app|
      WizardOfAwes::Hooks.init!
    end
  end
end