source 'https://rubygems.org'

gemspec

gem 'dry-types', github: 'dry-rb/dry-types', branch: 'do-not-require-type-registration'
gem 'dry-logic', github: 'dry-rb/dry-logic', branch: 'master'

group :test do
  gem 'codeclimate-test-reporter', platform: :mri, require: false
end

group :tools do
  gem 'byebug', platform: :mri
  gem 'mutant'
  gem 'mutant-rspec'
end

group :benchmarks do
  gem 'sqlite3'
  gem 'activerecord'
  gem 'benchmark-ips'
  gem 'virtus'
  gem 'fast_attributes'
  gem 'attrio'
end
