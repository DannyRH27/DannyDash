# -*- encoding: utf-8 -*-
# stub: sprockets 3.7.5 ruby lib

Gem::Specification.new do |s|
  s.name = "sprockets".freeze
  s.version = "3.7.5".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sam Stephenson".freeze, "Joshua Peek".freeze]
  s.date = "2024-09-19"
  s.description = "Sprockets is a Rack-based asset packaging system that concatenates and serves JavaScript, CoffeeScript, CSS, LESS, Sass, and SCSS.".freeze
  s.email = ["sstephenson@gmail.com".freeze, "josh@joshpeek.com".freeze]
  s.executables = ["sprockets".freeze]
  s.files = ["bin/sprockets".freeze]
  s.homepage = "https://github.com/rails/sprockets".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.5.11".freeze
  s.summary = "Rack-based asset packaging system".freeze

  s.installed_by_version = "3.6.8".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<base64>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<rack>.freeze, ["> 1".freeze, "< 3".freeze])
  s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<closure-compiler>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<coffee-script-source>.freeze, ["~> 1.6".freeze])
  s.add_development_dependency(%q<coffee-script>.freeze, ["~> 2.2".freeze])
  s.add_development_dependency(%q<eco>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<ejs>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<execjs>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.6".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<sass>.freeze, ["~> 3.1".freeze])
  s.add_development_dependency(%q<uglifier>.freeze, ["~> 2.3".freeze])
  s.add_development_dependency(%q<yui-compressor>.freeze, ["~> 0.12".freeze])
end
