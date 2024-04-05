# frozen_string_literal: true

require_relative "lib/gem/jruby/version"

Gem::Specification.new do |spec|
  spec.name = "gem-jruby"
  spec.version = Gem::Jruby::VERSION
  spec.authors = ["khanh-devos"]
  spec.email = ["dreamproperty.khanh@gmail.com"]

  spec.summary = "This is for study a gem with a jruby extension."
  spec.description = "Just visit the HOMEPAGE to the gem source."
  spec.homepage = "https://github.com/khanh-devos/gem-jruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "activesupport", "~> 7.1.0"
  
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"


  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
