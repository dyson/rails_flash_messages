$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_flash_messages/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_flash_messages"
  s.version     = RailsFlashMessages::VERSION
  s.authors     = ["Dyson Simmons"]
  s.email       = ["dysonsimmons@gmail.com"]
  s.homepage    = "http://dysonsimons.com"
  s.summary     = "Rails flash messages."
  s.description = "Rails flash messages allows the setting and retrieving of flash messages for HTML display using the Twitter Bootstrap markup by default."
  s.license     = "MIT"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0"

end
