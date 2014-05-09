# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'honeycheck/version'

Gem::Specification.new do |s|
  s.name = 'HoneyCheck'
  s.version = HoneyCheck::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'
  s.authors = ['Lucas Stephanou']
  s.description = <<-EOF
    Automatic tool to check if project libs are up-to-date.
  EOF

    s.email = 'lucas@lucas-ts.com'
  s.files = `git ls-files`.split($RS)
  s.test_files = s.files.grep(/^spec\//)
  s.executables = s.files.grep(/^bin\//) { |f| File.basename(f) }
  s.extra_rdoc_files = ['LICENSE.txt', 'README.md']
  s.homepage = 'http://github.com/lucasts/honey-check'
  s.licenses = ['MIT']
  s.require_paths = ['lib']
  s.rubygems_version = '1.8.23'
  s.summary = 'Automatic tool to check if project libs are up-to-date.'
  
  s.add_runtime_dependency('octokit')
  s.add_development_dependency('rake', '~> 10.1')
  s.add_development_dependency('rspec', '~> 2.14')
  s.add_development_dependency('bundler', '~> 1.3')
end
