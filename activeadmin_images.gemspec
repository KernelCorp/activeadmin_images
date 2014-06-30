$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activeadmin_images/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activeadmin_images"
  s.version     = ActiveadminImages::VERSION
  s.authors     = ["Kernel Web"]
  s.email       = ["mk@kernel-corp.com"]
  s.homepage    = "https://github.com/KernelCorp/activeadmin_images.git"
  s.summary     = "Active Admin plugin for generate the model of image"
  s.description = s.summary

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.1"
  s.add_dependency 'activeadmin'

end
