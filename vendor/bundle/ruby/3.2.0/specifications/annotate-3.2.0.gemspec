# -*- encoding: utf-8 -*-
# stub: annotate 3.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "annotate".freeze
  s.version = "3.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ctran/annotate_models/issues/", "source_code_uri" => "https://github.com/ctran/annotate_models.git" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Chaffee".freeze, "Cuong Tran".freeze, "Marcos Piccinini".freeze, "Turadg Aleahmad".freeze, "Jon Frisby".freeze]
  s.date = "2022-02-10"
  s.description = "Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.".freeze
  s.email = ["alex@stinky.com".freeze, "cuong.tran@gmail.com".freeze, "x@nofxx.com".freeze, "turadg@aleahmad.net".freeze, "jon@cloudability.com".freeze]
  s.executables = ["annotate".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "CHANGELOG.md".freeze]
  s.files = ["CHANGELOG.md".freeze, "README.md".freeze, "bin/annotate".freeze]
  s.homepage = "https://github.com/ctran/annotate_models".freeze
  s.licenses = ["Ruby".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "Annotates Rails Models, routes, fixtures, and others based on the database schema.".freeze

  s.installed_by_version = "3.6.8".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rake>.freeze, [">= 10.4".freeze, "< 14.0".freeze])
  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.2".freeze, "< 8.0".freeze])
end
