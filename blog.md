# Streamimg Geo Coordinates from MongoDB to your iPhone App with PubNub WebSocket SDK

![Streamimg Geo Coordinates from MongoDB to iPhone with WebSockets and PubNub](media/mongo-pipe-iphone-700.png)

Not long ago PubNub partnered with a high standards online
engineering broker firm (an online listing service
where you can post engineering projects).
The partnership involed joint PR and blogging, however it took a turn
when a new opportunity/idea was presented.
This particular idea stemmed from a commission listed on the broker's website
for building an integrated Real-time Map Service.
We took the opportunity and built a **Ruby GEM** with a sprinkle of documentation.

### Real-time Data Stream of Geo Coordinates 
Lat/Long from MongoDB replicated to your iPhone App

The commision posting at the online workplace with a $3,025 bounty.
Rather than taking the commision for ourselves,
which involves building and delivering the solution in a private exchange,
we instead reviewed the spceifications and requirements then we developed an
open source implementation that you can
download and run for your live app today!
MIT License, so you can use this however you desire.
We even created a GEM for you and made it easy to get started:

```
gem install monogopipe
```

This is the first step in the process and next we'll walk you through more details.
Actually now may be the time for you to watch the
short video, so feel free to jump into that now 
if you want a very, very brief demonstration/usage covering:

 1. Installing the Ruby gem and 
 2. Executing the commands to setup MongoDB and
 3. Running the Pipe Daemon.
 4. Launching the Map Viewer.
 5. Finally inserting lat/long coords into MongoDB.
 6. Result is live-animated points on a map displayed on the iPhone.

>The video will show usage of the MongoPubNubPipe gem.

```ruby
MongoPubNubPipe::Connect.new(...)
```

### Play Video - MongoDB Geo Coordinates

[
![Play Video - Streamimg Geo Coordinates from MongoDB to iPhone with PubNub WebSocket Client](media/pubnub-mongo-pipe-video.jpg)
](https://vimeo.com/60716860)

The video demonstraits an implementation of the
connection between MongoDB and a mobile device (an iPhone in this case).
This application code and gem library will provide you a way to easily add a live
always-on map connection which allows you to send lat/long signals
directly to the device displaying the map with the specific
Lat/Long db written into MongoDB.
**This will cause the device to draw an animated dot onto the 
screen of the device in real-time.**



This is triggered by simply writting to the MongoDB directly.
Once you've written a Lat/Long combo............................
Once you've written a Lat/Long combo............................
Once you've written a Lat/Long combo............................
Once you've written a Lat/Long combo............................

```ruby
MongoPubNubPipe::Connect.new(...)
```



The specs include several feature requests
and here follows the listing requirements:

 - When a new Lat/Lon document is **inserted** into MongoDB,
   stream the Lat/Lon data to a mobile device is push data.
 - Use a Node.JS Service to stream the data out of MongoDB.

Simple requirement list, though it requires moving peices.
We simplimifed the process and built two modules,
one in `ruby` and one in `node.js`.
We'll walk through the methods for getting you started and
how to hook up the stream to your iPhone app.
You can fast-track the tutorial and go strait to the 
GitHub Repository or install the pacakges for node or ruby.

## GitHub Repository

[MongoDB Pipe GitHub Repository](https://github.com/stephenlb/pubnub-mongo-pipe)

```
 ## Ruby
gem install monogopipe
```

## How it Works

MongoPipe is a new tool powered by [PubNub](http://www.pubnub.com) that
**streams your MongoDB Documents** from your MongoDB Collection directly
to your iPhone App in less than 0.25 seconds (real-time).
Your iPhone app opens a TCP Socket Connection to PubNub while a dispatch
process runs on your MongoDB server to catch insert
statemetns via tailable cursor.
The data is streamed and brokered via PubNub directly to your
iPhone App in real-time.

## Getting Started Guide

For those of you who need a quick full-guide to getting your mongoDB
installed and running with data streaming to your mobile app, you 
can follow this guide: 
[MongoDB Pipe GitHub Repository](https://github.com/stephenlb/pubnub-mongo-pipe/blob/master/README.md).
It will show you how to download/install MongoDB and the Pipe Process wether
you are using Ruby or Node.JS on your server.

## PubNub WebSocket Example

explain details frull RFC spec
explain details frull RFC spec
explain details frull RFC spec
explain details frull RFC spec
explain details frull RFC spec
explain details frull RFC spec
explain details frull RFC spec

```
Full Example.
```

## MongoDB Tailable Cursors

explain
explain
explain
explain

```ruby
require 'rubygems'
require 'mongopipe'

 ## ------------------------------------------------------------------------
 ## Pipe MongoDB for Inserts
 ## ------------------------------------------------------------------------
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
```


## Conclusion/Wrappup

This way we were easily able to avoid the exchange
with the owner of the posting, and just
build an excellent open source solution for all.



![PubNub MongoDB Pipe to iOS iPhone via WebSocket](https://github.com/stephenlb/pubnub-mongo-pipe/blob/master/media/pubnub-mongo-pipe-logo-transparent.png?raw=true)





