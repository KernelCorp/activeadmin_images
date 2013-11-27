require 'test_helper'
require 'generators/active_admin/images/model/model_generator'

class ModelGeneratorTest < Rails::Generators::TestCase
  tests ActiveAdmin::Images::ModelGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  test 'all files are properly created' do
    run_generator %w(CustomImage)
    assert_file 'app/models/custom_image'
  end

end
