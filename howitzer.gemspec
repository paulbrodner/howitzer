# -*- encoding: utf-8 -*-
require File.expand_path('../lib/howitzer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Roman Parashchenko, Konstantin Lynda, Nikolay Zozulyak']
  gem.email         = ['strongqa@gmail.com']
  gem.description   = %q{Howitzer allows to generate a test project in 5 minutes. It uses the best practices and design patterns. It has out-of-the-box configurations for parallel cross-browser testing in the Cloud.}
  gem.summary       = %q{Ruby based framework for acceptance testing}
  gem.homepage      = 'https://github.com/strongqa/howitzer'
  gem.license       = 'MIT'

  gem.bindir        = 'bin'
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'howitzer'
  gem.require_paths = ['lib']
  gem.version       = Howitzer::VERSION
  gem.required_ruby_version = '>= 1.9.3'

  gem.add_runtime_dependency 'nokogiri', '~> 1.6.2.rc2' if gem.platform.to_s =~ /mswin|mingw/
  gem.add_runtime_dependency 'rake'
  gem.add_runtime_dependency 'gli'
  gem.add_runtime_dependency 'i18n'
  gem.add_runtime_dependency 'syntax'
  gem.add_runtime_dependency 'cucumber', '~>1.2.0'
  gem.add_runtime_dependency 'minitest', '~>4.0' # limitation for cucumber (1.2.5)
  gem.add_runtime_dependency 'rspec', '>= 3.0.0'
  gem.add_runtime_dependency 'sexy_settings'
  gem.add_runtime_dependency 'repeater'
  gem.add_runtime_dependency 'launchy'
  gem.add_runtime_dependency 'log4r', '1.1.10'
  gem.add_runtime_dependency 'rest-client'
  gem.add_runtime_dependency 'poltergeist'
  gem.add_runtime_dependency 'rawler'
  gem.add_runtime_dependency 'capybara'
  gem.add_runtime_dependency 'selenium-webdriver'
  gem.add_runtime_dependency 'activesupport', '~>4.0'
  gem.add_runtime_dependency 'testingbot'

  gem.add_development_dependency('aruba')
  gem.add_development_dependency('fuubar', ['>= 0.0.1'])
  gem.add_development_dependency('ffaker')
end
