# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_log_prefix/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_log_prefix'
  spec.version       = RailsLogPrefix::VERSION
  spec.authors       = ['Vladimir Stepanov']
  spec.email         = ['vladimir.stepanov@faceit-team.com']

  spec.summary       = %q{Adds prefix to rails logs.}
  spec.description   = %q{This gem adds preset text to rails logs when executing rails [command_name].}
  spec.homepage      = 'https://github.com/VladimirStep/rails_log_prefix'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files = Dir['spec/**/*']
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'

  spec.add_runtime_dependency 'railties', '~> 5.0'
end
