# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "devs_ruby"
  spec.version       = DEVSRuby::VERSION.dup
  spec.authors       = ["Romain Franceschini"]
  spec.email         = ["franceschini.romain@gmail.com"]
  spec.summary       = %q{Discrete EVent system Specification for Ruby.}
  spec.description   = %q{A metadistribution of DEVS including common models, examples and extensions}
  spec.homepage      = "https://github.com/romain1189/devs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'yard', '~> 0.8'

  spec.add_runtime_dependency 'devs', '~> 0.5'
  spec.add_runtime_dependency 'devs-models', '~> 0.5'
  spec.add_runtime_dependency 'devs-examples', '~> 0.5'
  unless RUBY_PLATFORM =~ /java/
    spec.add_runtime_dependency 'devs-ext', '~> 0.5'
  end

  spec.required_ruby_version = '>= 1.9.2'
end
