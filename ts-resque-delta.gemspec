# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "thinking_sphinx/deltas/resque_delta/version"

Gem::Specification.new do |s|
  s.name        = "ts-resque-delta"
  s.version     = ThinkingSphinx::Deltas::ResqueDeltaInfo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aaron Gibralter"]
  s.email       = ["aaron.gibralter@gmail.com"]
  s.homepage    = "https://github.com/agibralter/ts-resque-delta"
  s.summary     = %q{Thinking Sphinx - Resque Deltas}
  s.description = %q{Manage delta indexes via Resque for Thinking Sphinx}

  s.rubyforge_project = "ts-resque-delta"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thinking-sphinx", ">= 3.0.0"
  s.add_dependency "riddle", ">= 1.5"
  s.add_dependency "resque", "~> 1.10"
  s.add_dependency "resque-lock-timeout", "~> 0.4"

  s.add_development_dependency "rspec", "~> 2.10.0"
  s.add_development_dependency "cucumber", ">= 0"
  s.add_development_dependency "database_cleaner", ">= 0.5.2"
  s.add_development_dependency "mysql2", "~> 0.3.11"
  s.add_development_dependency "rake", ">= 0.8.7"
  s.add_development_dependency "activerecord", ">= 4.0.0beta"
  s.add_development_dependency "flying-sphinx"
  s.add_development_dependency "mock_redis", "~> 0.3.0"
  s.add_development_dependency "guard", "~> 0.8.8"
  s.add_development_dependency "guard-rspec", "~> 0.5.8"
  s.add_development_dependency "guard-bundler", "~> 0.1.3"
  s.add_development_dependency "guard-cucumber", "~> 0.7.4"
  s.add_development_dependency "fakefs", "~> 0.4.0"
  s.add_development_dependency "appraisal", "~> 0.4.1"
end
