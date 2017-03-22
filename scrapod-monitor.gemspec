# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path 'lib', File.dirname(__FILE__)

$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

Gem::Specification.new do |spec|
  spec.name     = 'scrapod-monitor'
  spec.version  = '0.0.0'
  spec.summary  = 'Scrapod monitoring dashboard Rack application'
  spec.homepage = 'https://github.com/krowpu/scrapod-monitor'
  spec.license  = 'MIT'

  spec.author = 'krowpu'
  spec.email  = 'krowpu@tightmail.com'

  spec.description = <<-END.split("\n").map(&:strip).join ' '
    Scrapod monitoring dashboard Rack application
  END

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match %r{^(test|spec|features)/}
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename f }
  spec.require_paths = %w(lib)

  spec.add_runtime_dependency 'scrapod-redis'

  spec.add_runtime_dependency 'sinatra', '>= 2.0.0.rc1', '< 3.0'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'pry',     '~> 0.10'
  spec.add_development_dependency 'rubocop', '~> 0.47'
end
