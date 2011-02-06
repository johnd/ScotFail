# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faraday_middleware}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wynn Netherland"]
  s.date = %q{2011-02-03}
  s.description = %q{Various middleware for Faraday}
  s.email = ["wynn.netherland@gmail.com"]
  s.extra_rdoc_files = ["README.md"]
  s.files = [".gemtest", ".gitignore", "CHANGELOG.md", "Gemfile", "README.md", "Rakefile", "faraday_middleware.gemspec", "lib/faraday/mashify.rb", "lib/faraday/oauth2.rb", "lib/faraday/parse_json.rb", "lib/faraday/parse_xml.rb", "lib/faraday_middleware.rb", "lib/faraday_middleware/version.rb", "test/helper.rb", "test/mashify_test.rb", "test/oauth2_test.rb", "test/parse_json_test.rb", "test/parse_xml_test.rb"]
  s.homepage = %q{http://wynnnetherland.com/projects/faraday-middleware/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Various middleware for Faraday}
  s.test_files = ["test/helper.rb", "test/mashify_test.rb", "test/oauth2_test.rb", "test/parse_json_test.rb", "test/parse_xml_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hashie>, ["~> 1.0"])
      s.add_development_dependency(%q<json>, ["~> 1.4"])
      s.add_development_dependency(%q<multi_json>, ["~> 0.0"])
      s.add_development_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_development_dependency(%q<oauth2>, ["~> 0.1"])
      s.add_development_dependency(%q<rake>, ["~> 0.8"])
      s.add_development_dependency(%q<shoulda>, ["~> 2.11"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.3"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.1"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.5.4"])
    else
      s.add_dependency(%q<hashie>, ["~> 1.0"])
      s.add_dependency(%q<json>, ["~> 1.4"])
      s.add_dependency(%q<multi_json>, ["~> 0.0"])
      s.add_dependency(%q<multi_xml>, ["~> 0.2"])
      s.add_dependency(%q<oauth2>, ["~> 0.1"])
      s.add_dependency(%q<rake>, ["~> 0.8"])
      s.add_dependency(%q<shoulda>, ["~> 2.11"])
      s.add_dependency(%q<simplecov>, ["~> 0.3"])
      s.add_dependency(%q<test-unit>, ["~> 2.1"])
      s.add_dependency(%q<faraday>, ["~> 0.5.4"])
    end
  else
    s.add_dependency(%q<hashie>, ["~> 1.0"])
    s.add_dependency(%q<json>, ["~> 1.4"])
    s.add_dependency(%q<multi_json>, ["~> 0.0"])
    s.add_dependency(%q<multi_xml>, ["~> 0.2"])
    s.add_dependency(%q<oauth2>, ["~> 0.1"])
    s.add_dependency(%q<rake>, ["~> 0.8"])
    s.add_dependency(%q<shoulda>, ["~> 2.11"])
    s.add_dependency(%q<simplecov>, ["~> 0.3"])
    s.add_dependency(%q<test-unit>, ["~> 2.1"])
    s.add_dependency(%q<faraday>, ["~> 0.5.4"])
  end
end
