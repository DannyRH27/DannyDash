# -*- encoding: utf-8 -*-
# stub: figaro 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "figaro".freeze
  s.version = "1.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steve Richert".freeze]
  s.date = "2020-05-11"
  s.description = "Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file".freeze
  s.email = "steve.richert@gmail.com".freeze
  s.executables = ["figaro".freeze]
  s.files = ["bin/figaro".freeze]
  s.homepage = "https://github.com/laserlemon/figaro".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.3".freeze
  s.summary = "Simple Rails app configuration".freeze

  s.installed_by_version = "3.6.8".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<thor>.freeze, [">= 0.14.0".freeze, "< 2".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 1.7.0".freeze, "< 3".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 10.4.0".freeze, "< 14".freeze])
end
