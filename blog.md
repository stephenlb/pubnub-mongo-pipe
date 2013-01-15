We found a Gun.IO for $1,025 commision listing which
asked for **Real-time data stream of Geo Coordinates 
directly from MongoDB to your iPhone
with Node.JS Support**.
Rather than taking the commision,
we reviewed the listed spces and developed an
open source implementation that you can
download and implement into your live app.

This way we were easily able to avoid the exchange
with the posting owner, and just
build an excellent open source solution for all.

The specs include several features
and here follows the listing requirements:

 - When a new Lat/Lon document is **inserted** into MongoDB,
   stream the Lat/Lon data to a mobile device is push data.
 - Use a Node.JS Service to stream the data out of MongoDB.

Simple requirement list, though it requires moving peices.
We simplimifed the process and built two modules,
one in `ruby` and one in `node.js`.

```
## Ruby
gem install pubnub-monogo-pipe

## Node.JS
npm install pubnub-monogo-pipe
```

MongoDB Pipe is a new tool powered by [PubNub](http://www.pubnub.com) that
pipes all MongoDB **inserts** from your MongoDB Collection directly
to your iPhone App in less than 0.25 seconds (real-time).
The data stream opens a socket with a PubNub
dispatch process via pipeline communication.
This blog will discuss how the Pipe functions and also how to setup
the pipe to run on your system.

