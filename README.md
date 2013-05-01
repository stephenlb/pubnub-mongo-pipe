# Streaming Geo Coordinates from MongoDB to iPhone with WebSockets and PubNub

![PubNub MongoDB Pipe to iOS iPhone via WebSocket](/media/pubnub-mongo-pipe-logo-transparent.png)

## Get your PubNub API Keys

[http://www.pubnub.com/](PubNub)

First you'll need to get your PubNub API keys by visiting
[http://admin.pubnub.com/](PubNub Account Dashboard)

## Install MongoDB

#### Setup MongoDB - OSX
```
curl http://fastdl.mongodb.org/osx/mongodb-osx-x86_64-2.2.2.tgz > mongodb-osx-x86_64-2.2.2.tgz
```

#### Uncompress
```
tar xvfz mongodb-osx-x86_64-2.2.2.tgz
```

#### Add default MongoDB Directory
```
mkdir -p /data/db
```

#### Run MongoDB Server
```
mongodb-osx-x86_64-2.2.2/bin/mongod
```

#### Run MongoDB Interactive JS Console
```
mongodb-osx-x86_64-2.2.2/bin/mongo
```

## Install Ruby Packages

>Make sure you have Ruby 1.9.3 installed.

```
gem update --system
gem install pubnub
gem install mongo
gem install mongopipe ## MongoDB Pipe
gem install bson_ext
```

## Run PubNub MongoDB Ruby Pipe

You may run the Pipe by issuing this simple command
then follow the instructions that print out to test.

#### Run Pipe via CURL

```
ruby <(curl http://goo.gl/bUlUh)
```

You can also download the Pipe file first then run it locally.
This basically will save the Ruby source code file to your 
local hard drive and you can execute it anytime you need to.

### Download First
```
curl http://goo.gl/bUlUh > pipe.rb
```

### Then Run Locally
```
ruby ./pipe.rb
```

Follow the Output Instructions.
That's it!

The following section only shows a sample insertable document that
triggers replication broadcast to the map.

### Mongo Console

Next go back to your mongodb console and type the following commands:

```javascript
use test
db.cap_collection.insert({ latlon : [ 1.5, 2.0 ] })
```
