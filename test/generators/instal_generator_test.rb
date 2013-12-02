require 'test_helper'
require 'generators/active_admin/images/install/install_generator'

class InstalGeneratorTest < Rails::Generators::TestCase
  tests ActiveAdmin::Images::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  test 'all files are properly created' do
    run_generator %w(CustomImage)
    assert_file 'app/models/custom_image.rb'
    assert_file 'app/admin/custom_image.rb'
    assert_file 'app/views/admin/custom_images/_add_images.html.erb'
  end

end
