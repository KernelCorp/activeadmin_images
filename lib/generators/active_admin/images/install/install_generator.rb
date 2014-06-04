require 'rails/generators/active_record'

module ActiveAdmin
  module Images
    class InstallGenerator < ActiveRecord::Generators::Base
      argument :name, type: :string, default: ''
      argument :db_type, type: :string, default: 'ActiveRecord'

      source_root File.expand_path('../templates', __FILE__)

      def create_model
        if db_type == 'ActiveRecord'
          template 'model_ar.rb', "app/models/#{name.gsub('/', '_').underscore}.rb"
        else
          template 'model_mongo.rb', "app/models/#{name.gsub('/', '_').underscore}.rb"
        end
      end

      def manifest
        migration_template('migration.rb', "db/migrate/create_table_#{name.underscore.gsub('/', '_').pluralize}.rb") unless db_type == 'MongoId'
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
