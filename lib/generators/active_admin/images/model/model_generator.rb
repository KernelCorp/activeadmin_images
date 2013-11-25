module ActiveAdmin
  module Images
    class ModelGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_model
        template 'model.rb', "app/model/#{name.gsub('/', '_')}"
      end

      def create_migration

      end

    end
  end
end
