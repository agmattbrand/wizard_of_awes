# encoding: utf-8

module WizardOfAwes
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      desc 'Creates a wizard_of_awes gem initializer at config/initializers/wizardofawes.rb'

      def self.source_root
        @_wizardofawes_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def create_initializer_file
        template 'initializer.rb', File.join('config', 'initializers', 'wizardofawes.rb')
      end
    end
  end
end