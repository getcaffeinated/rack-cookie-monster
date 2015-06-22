# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-cookie_monster}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jen Oslislo"]
  s.date = %q{2014-02-19}
  s.description = %q{Cookie Policy fixer middleware for IE and Safari. Woo!}
  s.email = ["jennifer@stepchangegroup.com"]
  s.files = ["lib/rack/cookie_monster.rb", "README.markdown"]
  s.homepage = %q{https://github.com/mjfreshyfresh/rack-cookie_monster}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rack-cookie_monster}
  s.rubygems_version = %q{1.3.7.1}
  s.summary = %q{Cookie Policy fixer middleware for IE and Safari}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0.0"])
  end
end
