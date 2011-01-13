# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yo/version"

Gem::Specification.new do |s|
  s.name        = "yo"
  s.version     = Yo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Josep M. Bach"]
  s.email       = ["josep.m.bach@gmail.com"]
  s.homepage    = "http://github.com/txus/yo"
  s.summary     = %q{Street-oriented programming in Ruby}
  s.description = %q{Street-oriented programming in Ruby}

  s.rubyforge_project = "yo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
