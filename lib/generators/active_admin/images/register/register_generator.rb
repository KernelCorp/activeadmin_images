module ActiveAdmin
  module Images
    class RegisterGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_model
        template 'register.rb', "app/admin/#{name.gsub('/', '_').underscore}.rb"
      end

      def create_migration

      end

    end
  end
end
