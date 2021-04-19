# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require_relative 'lib/mapotempo_rubocop/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'mapotempo_rubocop'
  spec.version     = MapotempoRubocop::VERSION
  spec.authors     = ['Valentin Le Guennec', 'Yann Grégoire']
  spec.email       = %w[val.leguennec@gmail.com yann@mapotempo.com]
  spec.homepage    = 'https://mapotempo.com'
  spec.summary     = 'Mapotempo rubocop'
  spec.description = 'Rubocop rules in mapotempo projects.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  spec.test_files = Dir['test/**/*']

  spec.add_dependency 'rubocop', '~> 0.81.0'
  spec.add_dependency 'rubocop-minitest', '~> 0.8.1'
  spec.add_dependency 'rubocop-performance', '~> 1.5.2'

  spec.add_development_dependency 'bundler', '~> 1.17.3'
  spec.add_development_dependency 'rake', '~> 10.0'
end
