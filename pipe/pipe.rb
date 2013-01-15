## ----------------------------------------------------------------------------------
## USAGE:
## ----------------------------------------------------------------------------------
## ruby ./pubnub-mongodb-ruby-pipe.rb
## ----------------------------------------------------------------------------------
##
## See bottom of file for usage coding usage.
##
## ----------------------------------------------------------------------------------

require 'rubygems'
require 'mongopipe'

## ----------------------------------------------------------------------------------
## Pipe MongoDB for Inserts
## ----------------------------------------------------------------------------------
MongoPubNubPipe::Connect.new(
    :puts_usage    => true,
    :publish_key   => 'demo',
    :subscribe_key => 'demo',
    :db            => 'test',
    :collection    => 'cap_collection',
    :callback      => lambda{ |doc|
        ## Optional Callback Called on Doc Insert
        ## Remove :callback if you don't need it.
        puts(doc)
    }
).pipe()
