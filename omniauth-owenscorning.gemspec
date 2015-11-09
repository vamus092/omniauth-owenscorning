# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/owenscorning/version'

Gem::Specification.new do |spec|
  spec.add_dependency "omniauth-oauth2",   "~> 1.3"

  spec.name          = "omniauth-owenscorning"
  spec.version       = Omniauth::Owenscorning::VERSION
  spec.authors       = ["Rick Byington"]
  spec.email         = ["rick.byington@owenscorning.com"]

  spec.description   = "An OAuth2 strategy for owenscorning.com"
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/owenscorning/omniauth-owenscorning"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
