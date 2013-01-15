# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongopipe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency "pubnub"
  gem.add_dependency "mongo"

  gem.authors       = ["Stephen Blum"]
  gem.email         = ["help@pubnub.com"]
  gem.description   = "MongoDB Pipe powered by PubNub."
  gem.summary       = "Pipe MongoDB Document Data directly to your Mobile App."
  gem.homepage      = "https://github.com/stephenlb/pubnub-mongo-pipe"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongopipe"
  gem.require_paths = ["lib"]
  gem.version       = "1.4"
end
