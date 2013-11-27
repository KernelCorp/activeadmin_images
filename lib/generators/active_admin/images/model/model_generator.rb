require 'active_support'
require 'rails/generators/active_record'

module ActiveAdmin
  module Images
    class ModelGenerator < ActiveRecord::Generators::Base

    source_root File.expand_path('../templates', __FILE__)

      def create_model
        template 'model.rb', "app/model/#{name.underscore}"
      end

      def create_migration

      end

    end
  end
end
