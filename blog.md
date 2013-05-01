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
Source code is available via GitHub if you want to see everything - 
[MongoDB Pipe GitHub Repository](https://github.com/stephenlb/pubnub-mongo-pipe)

This becomes the `new` interface that is available with `mongopipe` gem:

```ruby
MongoPubNubPipe::Connect.new(...)
```

Usage of `MongoPubNubPipe` is available lower in this document.

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

The dot that animates is triggered by simply writting to your MongoDB directly.
For example here is a MongoDB Command that will cause a write, which in turn
triggers the sync with the consumer iPhone device that is rendering the map
in real-time.

```javascript
db.collection_name.insert({ latlon : [ 1.5, 2.0 ] })
```

Once you've written a Lat/Long coordinate into MongoDB colleciton,
the process beggins instantly synchronizing with any connected iPhone.
We where able to accomplish the and include several feature requests
and here follows the listing requirements:

 - When a new Lat/Lon document is **inserted** into MongoDB,
   stream the Lat/Lon data to a mobile device is push data.
 - Use a Ruby or Node.JS Service to stream the data out of MongoDB
   as it is written in real-time.

Simple enough, yes, though it requires moving peices.
We simplimifed the process and built two modules,
one in `Ruby` and one in `HTML5`.
We'll walk through the methods for getting you started and
how to hook into the stream on your iPhone App.
You can fast-track the tutorial and go strait to the 
GitHub Repository or `gem install mongopipe` pacakge for ruby.

### GitHub Repository

[MongoDB Pipe GitHub Repository](https://github.com/stephenlb/pubnub-mongo-pipe)

```
 ## Ruby
gem install monogopipe
```

## How it Works

MongoPipe is a new tool powered by [PubNub](http://www.pubnub.com) that
**streams your MongoDB Documents** from your MongoDB Collection directly
to your iPhone App in less than 0.25 seconds (real-time).
Your iPhone app opens an always-on TCP Socket Connection to PubNub while a dispatch
process runs on your MongoDB server via Tailable Cursors to catch inserted documents.
The data is streamed and brokered via PubNub directly to your
iPhone App in real-time.

## Getting Started Guide

For those of you who need a quick full-guide to getting your mongoDB
installed and running with data streaming to your mobile app, you 
can follow this guide: 
[MongoDB Pipe GitHub Repository](https://github.com/stephenlb/pubnub-mongo-pipe/blob/master/README.md).
It will show you how to download/install MongoDB and the Pipe Process.

## MongoDB Tailable Cursors

The ruby GEM `mongopipe` utilizes the tailable cursor interface provided
by MongoDB then pipes the results directly through PubNub which creates
a direct broadcast synchronization process with the mobile app.

Make sure MongoDB is running.

```
mongod
```

Next open a text editor and copy/paste the following mongopipe example.

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

Save this to a file `pipe.rb` for example then execute it.

```
ruby pipe.rb
```

This will connect directly to MongoDB and print usage guide on next steps.
The video covers only a demonstration of this process.
Here is a sample output of what may be provided via the `puts(doc)` output:

```
 ------------------------------------------------------
 Step 1:
 -------
 Open Your Browser to Show PubNub Pipe Console
 ------------------------------------------------------
 
 > open http://www.pubnub.com/console?channel=test.cap_collection
 
 ------------------------------------------------------
 Step 2:
 -------
 Open Demo Map on Your Phone
 ------------------------------------------------------
 
 > open http://goo.gl/HAqAv#test.cap_collection
 
 ------------------------------------------------------
 Step 3:
 -------
 Insert Test Data
 ------------------------------------------------------
 
 > ./mongo
 
 > use test
 > db.cap_collection.insert({ latlon : [ 1.5, 2.0 ] })
```

## Wrappup Details

..................
..................
..................

![PubNub MongoDB Pipe to iOS iPhone via WebSocket](https://github.com/stephenlb/pubnub-mongo-pipe/blob/master/media/pubnub-mongo-pipe-logo-transparent.png?raw=true)


## PubNub WebSocket Reference

The MongoDB Pipe uses the PubNub WebSocket interface which provides an always-on
synchronization direct to your iPhone app.
The PubNub WebSocket acts as a broadcast receiver and syncs directly
to your mobile device in real-time
with your MongoDB server via MongoPipe.

Following is an example of how the Map app implements the socket:

```javascript
// Create Socket Connection
var socket = new WebSocket('wss://pubsub.pubnub.com/PUBLISH_KEY/SUBSCRIBE_KEY/CHANNEL');

// Set Message Receiver Function
socket.onmessage = receiver;

// Receiver Function Prints Data Result
function receiver(evt) {
    console.log(evt.data);
}
```


