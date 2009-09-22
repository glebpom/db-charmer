# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{db-charmer}
  s.version = "1.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexey Kovyrin"]
  s.date = %q{2009-09-18}
  s.description = %q{ActiveRecord Connections Magic (slaves, multiple connections, etc)}
  s.email = %q{alexey@kovyrin.net}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "Makefile",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "db-charmer.gemspec",
     "init.rb",
     "lib/db_charmer.rb",
     "lib/db_charmer/active_record_extensions.rb",
     "lib/db_charmer/association_proxy.rb",
     "lib/db_charmer/connection_factory.rb",
     "lib/db_charmer/connection_proxy.rb",
     "lib/db_charmer/connection_switch.rb",
     "lib/db_charmer/db_magic.rb",
     "lib/db_charmer/finder_overrides.rb",
     "lib/db_charmer/multi_db_migrations.rb",
     "lib/db_charmer/multi_db_proxy.rb"
  ]
  s.homepage = %q{http://github.com/kovyrin/db-charmer}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{ActiveRecord Connections Magic}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.2.0"])
    else
      s.add_dependency(%q<rails>, [">= 2.2.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.2.0"])
  end
end
