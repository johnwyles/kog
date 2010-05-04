# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{kog}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Wyles"]
  s.date = %q{2010-05-04}
  s.description = %q{A Ruby implementation of The Open Graph Protocol by Facebook}
  s.email = %q{john@johnwyles.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "features/kog.feature",
     "features/step_definitions/kog_steps.rb",
     "features/support/env.rb",
     "kog.gemspec",
     "lib/kog.rb",
     "lib/kog/object.rb",
     "lib/kog/parser.rb",
     "spec/kog/object/object_spec.rb",
     "spec/kog/opengraph_spec.rb",
     "spec/kog/parser/parser_spec.rb",
     "spec/kog/xhtml/bad_data.xhtml",
     "spec/kog/xhtml/good_data.xhtml",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/johnwyles/kog}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Ruby implementation of The Open Graph Protocol by Facebook}
  s.test_files = [
    "spec/kog/object/object_spec.rb",
     "spec/kog/opengraph_spec.rb",
     "spec/kog/parser/parser_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<cucumber>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<cucumber>, [">= 0"])
  end
end

