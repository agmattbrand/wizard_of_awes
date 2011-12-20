module WizardOfAwes
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Installs Wizard Of Awes and generates the migration"

      include Rails::Generators::Migration

      def self.next_migration_number(dirname)
        Time.now.strftime("%Y%m%d%H%M%S")
      end

      def copy_initializer
        template 'wizard_of_awes.rb.erb', 'config/initializers/wizard_of_awes.rb'
      end

      def create_migrations
        Dir["#{self.class.source_root}/migrations/*.rb"].sort.each do |filepath|
          name = File.basename(filepath)
          migration_template "migrations/#{name}", "db/migrate/#{name.gsub(/^\d+_/,'')}"
          sleep 1
        end
      end
    end
  end
end
