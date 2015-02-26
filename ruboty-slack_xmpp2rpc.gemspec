# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/slack_xmpp2rpc/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-slack_xmpp2rpc"
  spec.version       = Ruboty::SlackXmpp2rpc::VERSION
  spec.authors       = ["amacou"]
  spec.email         = ["amacou.abf@gmail.com"]
  spec.summary       = %q{ ruboty slack plugin say by webapi }
  spec.description   = %q{ ruboty slack plugin say by webapi}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty-slack"
  spec.add_dependency "slack-ruby"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "ruboty"
end
