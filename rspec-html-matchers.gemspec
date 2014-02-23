# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'rspec-html-matchers'
  s.version     = '0.5.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['kucaahbe']
  s.email       = ['kucaahbe@ukr.net']
  s.license     = 'MIT'
  s.homepage    = 'http://github.com/kucaahbe/rspec-html-matchers'
  s.summary     = %q{Nokogiri based 'have_tag' and 'with_tag' matchers for rspec 2.x.x}
  s.description = <<DESC
#{s.summary}. Does not depend on assert_select matcher, provides useful error messages.
DESC
  s.post_install_message = <<POST_INST
Support for rspec "should" syntax removed,
please use new "expect" syntax instead (see README on github for examples).

More info on "expect" syntax: https://github.com/rspec/rspec-expectations#rspec-expectations--
POST_INST

  s.rubyforge_project = 'rspec-html-matchers'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # since 2.11.0 introduced new expect().to syntax
  s.add_runtime_dependency 'rspec',    '~> 2', '>= 2.11.0'
  s.add_runtime_dependency 'nokogiri', '~> 1'

  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'travis-lint'
  s.add_development_dependency 'debugger' if RUBY_ENGINE=='ruby'
end
