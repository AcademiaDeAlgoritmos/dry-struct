# coding: utf-8

require_relative 'lib/dry/struct/version'

Gem::Specification.new do |spec|
  spec.name          = 'dry-struct'
  spec.version       = Dry::Struct::VERSION
  spec.authors       = ['Piotr Solnica']
  spec.email         = ['piotr.solnica@gmail.com']
  spec.license       = 'MIT'

  spec.summary       = 'Typed structs and value objects.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/dry-rb/dry-struct'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'dry-equalizer', '~> 0.2'
  spec.add_runtime_dependency 'dry-configurable', '~> 0.1'
  spec.add_runtime_dependency 'dry-logic', '~> 0.2', '>= 0.2.3'
  spec.add_runtime_dependency 'dry-types', '~> 0.8', '>= 0.8.1'
  spec.add_runtime_dependency 'ice_nine', '~> 0.11'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 11.0'
  spec.add_development_dependency 'rspec', '~> 3.3'
end
