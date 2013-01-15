# PubNub MongoDB Pipe

Stream data inserted into MongoDB directly to your iPhone App.

## Installation

Add this line to your application's Gemfile:

    gem 'mongopipe'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongopipe

## Usage

```ruby
MongoPubNubPipe::Connect.new(
    :puts_usage    => true,
    :publish_key   => 'demo', ## YOUR PUBLISH KEY
    :subscribe_key => 'demo', ## YOUR SUBSCRIBE KEY
    :db            => 'test',
    :collection    => 'cap_collection',
    :callback      => lambda{ |doc|
        ## Optional Callback Called on Doc Insert
        ## Remove :callback if you don't need it.
        puts(doc)
    }
).pipe()
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
