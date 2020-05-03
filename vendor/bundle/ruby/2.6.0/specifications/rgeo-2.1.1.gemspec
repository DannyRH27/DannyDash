# -*- encoding: utf-8 -*-
# stub: rgeo 2.1.1 ruby lib
# stub: ext/geos_c_impl/extconf.rb

Gem::Specification.new do |s|
  s.name = "rgeo".freeze
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Azuma, Tee Parham".freeze]
  s.date = "2019-08-26"
  s.description = "RGeo is a geospatial data library for Ruby. It provides an implementation of the Open Geospatial Consortium's Simple Features Specification, used by most standard spatial/geographic data storage systems such as PostGIS. A number of add-on modules are also available to help with writing location-based applications using Ruby-based frameworks such as Ruby On Rails.".freeze
  s.email = "dazuma@gmail.com, parhameter@gmail.com".freeze
  s.extensions = ["ext/geos_c_impl/extconf.rb".freeze]
  s.files = ["ext/geos_c_impl/extconf.rb".freeze]
  s.homepage = "https://github.com/rgeo/rgeo".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "RGeo is a geospatial data library for Ruby.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<ffi-geos>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    else
      s.add_dependency(%q<ffi-geos>.freeze, ["~> 1.2"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
      s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
    end
  else
    s.add_dependency(%q<ffi-geos>.freeze, ["~> 1.2"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.51"])
  end
end
