# -*- encoding: utf-8 -*-
# require File.expand_path('../lib/motella/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'motella'
  gem.version       = '0.0.1'
  gem.authors       = ['Fernand Galiana', 'Bryan Maynard']
  gem.email         = ['fernand.galiana@gmail.com', 'bsgbryan@gmail.com']
  gem.summary       = %{Port of the most excellent MotionAwesome gem that works with Fontello}
  gem.description   = %{Use your Fontello library for Awesome icons in your iOS apps!}
  gem.homepage      = 'http://bsgbryan.github.io/motella'
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'plist'
  gem.add_development_dependency 'css_parser'

  gem.add_dependency 'motion-map'
end
