require 'test_helper'


class ModelGeneratorTest < Rails::Generators::TestCase
  tests ActiveAdmin::Images::ModelGenerator
  destination File.expand_path("../tmp", File.dirname(__FILE__))
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator 'Image'
    assert_file "app/model/image.rb"
  end

end