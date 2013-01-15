# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mongo-pipe"
  s.version = "1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["PubNub"]
  s.date = "2013-01-01"
  s.description = "MongoDB Pipe powered by PubNub"
  s.email = "help@pubnub.com"
  s.files = [
    "mongo-pipe.rb"
  ]
  s.homepage = "https://github.com/stephenlb/pubnub-mongo-pipe"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.7.2"
  s.summary = "Pipe MongoDB Data directly to your Mobile App."

  s.add_dependency "pubnub"
  s.add_dependency "mongo"
end
