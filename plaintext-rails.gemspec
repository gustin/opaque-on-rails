$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "plaintext/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "plaintext-rails"
  spec.version     = Plaintext::Rails::VERSION
  spec.authors     = ["gustin"]
  spec.email       = ["gustin@users.noreply.github.com"]
  spec.homepage    = "https://www.getplaintext.com"
  spec.summary     = "Summary of Plaintext::Rails."
  spec.description = "Description of Plaintext::Rails."
  spec.license     = "*"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2"
  spec.add_dependency 'rack-cors'

  spec.add_development_dependency "sqlite3"
end
