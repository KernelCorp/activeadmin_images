require 'rails/generators/active_record'

module ActiveAdmin
  module Images
    class ModelGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_model
        template 'model.rb', "app/models/#{name.gsub('/', '_').underscore}.rb"
      end

      def manifest
        migration_template 'migration.rb', "db/migrate/create_table_#{name.underscore.gsub('/', '_').pluralize}.rb"
      end

      private
      def images_local_assigns
        assigns = {}
        assigns[:migration_action] = "create"
        assigns[:class_name] = "CreateTable#{name.gsub('/', '_').pluralize}"
        assigns[:table_name] = name.gsub('/', '_').underscore.pluralize
        assigns
      end

    end
  end
end
