# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require_relative 'lib/rubocop-policy/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'rubocop-policy'
  spec.version     = RubocopPolicy::VERSION
  spec.authors     = ['Valentin Le Guennec', 'Yann Grégoire']
  spec.email       = %w[val.leguennec@gmail.com]
  spec.homepage    = 'https://cartoroute.com'
  spec.summary     = 'rubocop policy'
  spec.description = 'Rubocop rules in cartoroute projects.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md', '*.yml']
  spec.test_files = Dir['test/**/*']

  spec.add_dependency 'rubocop', '~> 1.56.1'
  spec.add_dependency 'rubocop-minitest', '~> 0.31.0'
  spec.add_dependency 'rubocop-performance', '~> 1.19.0'

  spec.add_development_dependency 'bundler', '~> 2.3.26'
  spec.add_development_dependency 'rake', '~> 13.0.6'
end
