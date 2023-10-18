require_relative "lib/forex/version"

Gem::Specification.new do |spec|
  spec.name        = "forex"
  spec.version     = Forex::VERSION
  spec.authors     = ["Usman"]
  spec.email       = ["uxman.sherwani@gmail.com"]
  spec.homepage    = "https://github.com/uxxman/forex"
  spec.summary     = "Foreign currency Exchange"
  spec.description = spec.summary
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails"
end
