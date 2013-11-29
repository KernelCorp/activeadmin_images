require 'rails/generators/active_record'

module ActiveAdmin
  module Images
    class InstallGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_model
        template 'model.rb', "app/models/#{name.gsub('/', '_').underscore}.rb"
      end

      def manifest
        migration_template 'migration.rb', "db/migrate/create_table_#{name.underscore.gsub('/', '_').pluralize}.rb"
      end

      def create_register
        template 'register.rb', "app/admin/#{name.gsub('/', '_').underscore}.rb"
      end

      def create_images_form
        template 'form.rb', "app/views/admin/#{name.underscore.gsub('/', '_').pluralize}/_add_images.html.erb"
      end


    end
  end
end
