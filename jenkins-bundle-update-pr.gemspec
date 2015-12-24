# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jenkins/bundle/update/pr/version'

Gem::Specification.new do |spec|
  spec.name          = 'jenkins-bundle-update-pr'
  spec.version       = Jenkins::Bundle::Update::Pr::VERSION
  spec.authors       = ['Hidekazu Tanaka']
  spec.email         = ['hidekazu.tanaka@gmail.com']

  spec.summary       = 'Create GitHub PullRequest of bundle update in Jenins'
  spec.description   = 'A script for continues bundle update. Use in Jenins'
  spec.homepage      = 'https://github.com/holidayworking/jenkins-bundle-update-pr'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'octokit', '~> 3.8'
  spec.add_dependency 'compare_linker'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10.0'
end
