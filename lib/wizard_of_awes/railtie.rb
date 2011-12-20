module WizardOfAwes
  # class Railtie < ::Rails::Railtie #:nodoc:
  #   initializer 'wizard_of_awes' do |app|
  #     WizardOfAwes::Hooks.init!
  #   end
  # end

  class Railtie < Rails::Railtie
    initializer "wizard_of_awes.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end

end