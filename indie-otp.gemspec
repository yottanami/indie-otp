$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "indie/otp/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "indie-otp"
  s.version     = Indie::Otp::VERSION
  s.authors     = ["yottanami"]
  s.email       = ["yottanami@gmail.com"]
  s.homepage    = "https://github.com/yottanami/indie-otp"
  s.summary     = "Rails Password-less OTP Authentication"
  s.description = "Ruby on Rails password less authentication"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "active_model_otp"
  s.add_development_dependency "sqlite3"
end
