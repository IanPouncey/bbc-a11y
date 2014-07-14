# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'a11y'
  s.version     = File.read(File.expand_path("../lib/a11y/version", __FILE__))
  s.authors     = ["Matt Wynne", "Ian Pouncey"]
  s.description = "A tool for testing the compliance of web URLs against the BBC's accessibilty guidelines"
  s.summary     = "a11y-#{s.version}"
  s.email       = "github@ipouncey.co.uk"
  s.homepage    = "https://cucumber.pro"
  s.platform    = Gem::Platform::RUBY
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9.3"

  s.add_dependency 'cucumber', '~> 1.3'
  s.add_dependency 'rspec',   '~> 3.0'

  s.rubygems_version = ">= 1.6.1"
  s.files            = `git ls-files`.split("\n").reject {|path| path =~ /\.gitignore$/ }
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end
