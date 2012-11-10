$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "route66/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "route66"
  s.version     = Route66::VERSION
  s.authors     = ["Lance Hampton"]
  s.email       = ["lance.hampton@gmail.com"]
  s.homepage    = "https://github.com/LanceH/route66"
  s.summary     = "Displays routes at <your-app>/route66"
  s.description = "Displays routes at <your-app>/route66"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"
  #s.add_dependency "jquery-rails"

  #s.add_development_dependency "sqlite3"
end
