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
require 'pubnub'
require 'mongo'

module MongoPubNubPipe
    class Connect
        def initialize(args={})
            @publish_key   = args[:publish_key]   or 'demo'
            @subscribe_key = args[:subscribe_key] or 'demo'

            @database      = args[:db]            or 'test'
            @collection    = args[:collection]    or 'cap_col'
            @server_port   = args[:port]          or 27017
            @server_ip     = args[:ip]            or '0.0.0.0'
            @callback      = args[:callback]      or lambda {}

            @channel       = "#{@database}.#{@collection}"

            @pubnub        = Pubnub.new(
                :publish_key   => @publish_key,
                :subscribe_key => @subscribe_key
            )

            if args[:puts_usage]
                puts " "
                puts " ------------------------------------------------------"
                puts " Step 1:"
                puts " -------"
                puts " Open Your Browser to Show PubNub Pipe Console"
                puts " ------------------------------------------------------"
                puts " "
                puts " > open http://www.pubnub.com/console?channel=#{@channel}"
                puts " "
                puts " ------------------------------------------------------"
                puts " Step 2:"
                puts " -------"
                puts " Open Demo Map on Your Phone"
                puts " ------------------------------------------------------"
                puts " "
                puts " > open http://goo.gl/HAqAv##{@channel}"
                puts " "
                puts " ------------------------------------------------------"
                puts " Step 3:"
                puts " -------"
                puts " Insert Test Data"
                puts " ------------------------------------------------------"
                puts " "
                puts " > ./mongo"
                puts " "
                puts " > use #{@database}"
                puts " > db.#{@collection}.insert({ latlon : [ 1.5, 2.0 ] })"
                puts " "
            end

            ## ---------------
            ## Easter Egg
            ## ---------------
            '''
            for (var i=0;i<10;i++) {
                db.cap_collection.insert({
                    latlon : [ Math.random()*40.0, Math.random()*-122.0 ]
                })
            }
            '''
            self.connect()
        end

        def connect()
            @connection = Mongo::Connection.new( @server_ip, @server_port )
            @db         = @connection[@database]
            @table      = @db[@collection]
            @cursor     = Mongo::Cursor.new(
                @table,
                :timeout  => false,
                :tailable => true
            )

            if not @db.collection_names.include?(@collection)
                @db.create_collection( @collection, {
                    :capped => true,
                    :max    => 1024,
                    :size   => 1024
                } )
                @table = @db[@collection]
            end
        end

        def pipe()
            if not @started then
                while doc = @cursor.next do end
                @started = true
            end
            while true do
                begin
                    doc = @cursor.next
                    if @cursor.closed?; self.connect(); next end
                    if doc == nil; sleep(1); next end
                rescue
                    self.connect()
                    self.pipe()
                    return
                end

                @callback.call(doc)
                @pubnub.publish(
                    :channel  => @channel,
                    :message  => doc,
                    :callback => lambda {|x|}
                )
            end
        end
    end
end

## ----------------------------------------------------------------------------------
## Pipe MongoDB for Inserts
## ----------------------------------------------------------------------------------
if __FILE__ == $0

    ## -------------
    ## Example Usage
    ## -------------
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

end
