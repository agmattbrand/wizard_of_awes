require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record/migration'

module WizardOfAwes
  class InstallGenerator < Rails::Generators::Base
    desc "Installs Wizard Of Awes and generates the migration"

    include Rails::Generators::Migration
    extend ActiveRecord::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)

    def self.next_migration_number(dirname)
      Time.now.strftime("%Y%m%d%H%M%S")
    end

    def copy_initializer
      template 'wizard_of_awes.rb.erb', 'config/initializers/wizard_of_awes.rb'
    end

    def create_migration_file
      migration_template 'create_helper_snippets.rb', 'db/migrate/create_helper_snippets.rb'      
    end
  end
end
