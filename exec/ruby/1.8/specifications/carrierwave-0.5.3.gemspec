# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{carrierwave}
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Nicklas"]
  s.date = %q{2011-03-22}
  s.description = %q{Upload files in your Ruby applications, map them to a range of ORMs, store them on different backends.}
  s.email = ["jonas.nicklas@gmail.com"]
  s.homepage = %q{https://github.com/jnicklas/carrierwave}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{carrierwave}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby file upload library}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_development_dependency(%q<rails>, ["= 3.0.5"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_development_dependency(%q<fog>, ["= 0.7.1"])
      s.add_development_dependency(%q<cucumber>, ["= 0.8.5"])
      s.add_development_dependency(%q<sqlite3>, ["= 1.3.3"])
      s.add_development_dependency(%q<dm-core>, ["= 1.0.0"])
      s.add_development_dependency(%q<dm-validations>, ["= 1.0.0"])
      s.add_development_dependency(%q<dm-migrations>, ["= 1.0.0"])
      s.add_development_dependency(%q<dm-sqlite-adapter>, ["= 1.0.0"])
      s.add_development_dependency(%q<sequel>, ["= 3.14.0"])
      s.add_development_dependency(%q<rmagick>, ["= 2.13.1"])
      s.add_development_dependency(%q<RubyInline>, ["= 3.8.4"])
      s.add_development_dependency(%q<image_science>, ["= 1.2.1"])
      s.add_development_dependency(%q<mini_magick>, ["= 2.3"])
      s.add_development_dependency(%q<bson_ext>, ["= 1.2.4"])
      s.add_development_dependency(%q<mongoid>, ["= 2.0.0.beta.19"])
      s.add_development_dependency(%q<timecop>, ["= 0.3.5"])
      s.add_development_dependency(%q<json>, ["= 1.5.1"])
      s.add_development_dependency(%q<cloudfiles>, ["= 1.4.12"])
      s.add_development_dependency(%q<sham_rack>, ["= 1.3.3"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_dependency(%q<rails>, ["= 3.0.5"])
      s.add_dependency(%q<rspec>, ["= 1.3.0"])
      s.add_dependency(%q<fog>, ["= 0.7.1"])
      s.add_dependency(%q<cucumber>, ["= 0.8.5"])
      s.add_dependency(%q<sqlite3>, ["= 1.3.3"])
      s.add_dependency(%q<dm-core>, ["= 1.0.0"])
      s.add_dependency(%q<dm-validations>, ["= 1.0.0"])
      s.add_dependency(%q<dm-migrations>, ["= 1.0.0"])
      s.add_dependency(%q<dm-sqlite-adapter>, ["= 1.0.0"])
      s.add_dependency(%q<sequel>, ["= 3.14.0"])
      s.add_dependency(%q<rmagick>, ["= 2.13.1"])
      s.add_dependency(%q<RubyInline>, ["= 3.8.4"])
      s.add_dependency(%q<image_science>, ["= 1.2.1"])
      s.add_dependency(%q<mini_magick>, ["= 2.3"])
      s.add_dependency(%q<bson_ext>, ["= 1.2.4"])
      s.add_dependency(%q<mongoid>, ["= 2.0.0.beta.19"])
      s.add_dependency(%q<timecop>, ["= 0.3.5"])
      s.add_dependency(%q<json>, ["= 1.5.1"])
      s.add_dependency(%q<cloudfiles>, ["= 1.4.12"])
      s.add_dependency(%q<sham_rack>, ["= 1.3.3"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
    s.add_dependency(%q<rails>, ["= 3.0.5"])
    s.add_dependency(%q<rspec>, ["= 1.3.0"])
    s.add_dependency(%q<fog>, ["= 0.7.1"])
    s.add_dependency(%q<cucumber>, ["= 0.8.5"])
    s.add_dependency(%q<sqlite3>, ["= 1.3.3"])
    s.add_dependency(%q<dm-core>, ["= 1.0.0"])
    s.add_dependency(%q<dm-validations>, ["= 1.0.0"])
    s.add_dependency(%q<dm-migrations>, ["= 1.0.0"])
    s.add_dependency(%q<dm-sqlite-adapter>, ["= 1.0.0"])
    s.add_dependency(%q<sequel>, ["= 3.14.0"])
    s.add_dependency(%q<rmagick>, ["= 2.13.1"])
    s.add_dependency(%q<RubyInline>, ["= 3.8.4"])
    s.add_dependency(%q<image_science>, ["= 1.2.1"])
    s.add_dependency(%q<mini_magick>, ["= 2.3"])
    s.add_dependency(%q<bson_ext>, ["= 1.2.4"])
    s.add_dependency(%q<mongoid>, ["= 2.0.0.beta.19"])
    s.add_dependency(%q<timecop>, ["= 0.3.5"])
    s.add_dependency(%q<json>, ["= 1.5.1"])
    s.add_dependency(%q<cloudfiles>, ["= 1.4.12"])
    s.add_dependency(%q<sham_rack>, ["= 1.3.3"])
  end
end
