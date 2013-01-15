# MongoDB Stream Sync Pipe for iPhone with WebSockets

!!!!! IPHONE SCREENSHOT SHOW HORIZONGAL VIEW !!!!!

We found a Gun.IO $1,025 commision listing which
asked for **Real-time data stream of Geo Coordinates 
directly from MongoDB to your iPhone
with Node.JS Support**.
Rather than taking the commision,
we reviewed the listed spces and developed an
open source implementation that you can
download and run for your live app.
This way we were easily able to avoid the exchange
with the posting owner, and just
build an excellent open source solution for all.

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

