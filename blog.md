# Streamimg Geo Coordinates from MongoDB to iPhone with PubNub WebSocket Client

![Streamimg Geo Coordinates from MongoDB to iPhone with WebSockets and PubNub](media/mongo-pipe-iphone-700.png)

MapHub posted a request for 
**Real-time data stream of Geo Coordinates 
directly from MongoDB to your iPhone
with Node.JS Support**.
This request posted to Gun.IO  with a $1,025 commision listing.
Rather than taking the commision,
we reviewed the spces/requirements and developed an
open source implementation that you can
download and run for your live app.
Also we've made a video that demonstraits the app and software
connection between MongoDB and a mobile device;
such as the iPhone.
This way we were easily able to avoid the exchange
with the owner of the posting, and just
build an excellent open source solution for all.

### Play Video - MongoDB Geo Coordinates

[
![Play Video - Streamimg Geo Coordinates from MongoDB to iPhone with PubNub WebSocket Client](media/pubnub-mongo-pipe-video.jpg)
](https://vimeo.com/60716860)

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
 # Ruby
gem install monogopipe

 # Node.JS
npm install monogopipe
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

```
Full Example.
```


## MongoDB Tailable Cursors

explain

```
partial example...
```







![PubNub MongoDB Pipe to iOS iPhone via WebSocket](https://github.com/stephenlb/pubnub-mongo-pipe/blob/master/media/pubnub-mongo-pipe-logo-transparent.png?raw=true)









