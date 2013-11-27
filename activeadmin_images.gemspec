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
  s.summary     = "Summary of ActiveadminImages."
  s.description = "Description of ActiveadminImages."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"


end
