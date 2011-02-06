# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple_oauth}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve Richert"]
  s.date = %q{2011-02-03}
  s.description = %q{Simply builds and verifies OAuth headers}
  s.email = %q{steve.richert@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".gemtest", ".gitignore", "Gemfile", "LICENSE", "README.rdoc", "Rakefile", "VERSION", "init.rb", "lib/simple_oauth.rb", "lib/simple_oauth/core_ext/object.rb", "lib/simple_oauth/header.rb", "lib/simple_oauth/version.rb", "simple_oauth.gemspec", "test/helper.rb", "test/rsa_private_key", "test/simple_oauth_test.rb"]
  s.homepage = %q{http://github.com/laserlemon/simple_oauth}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Simply builds and verifies OAuth headers}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
