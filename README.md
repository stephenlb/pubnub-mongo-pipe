# PubNub to MongoDB Pipe for Mobile iOS and Chrome with Real-time WebSockets

## Install MongoDB

### Setup MongoDB - OSX
```
curl http://fastdl.mongodb.org/osx/mongodb-osx-x86_64-2.2.2.tgz > mongodb-osx-x86_64-2.2.2.tgz
```

### Uncompress
```
tar xvfz mongodb-osx-x86_64-2.2.2.tgz
```

### Add default MongoDB Directory
```
mkdir -p /data/db
```

### Run MongoDB Server
```
mongodb-osx-x86_64-2.2.2/bin/mongod
```

### Run MongoDB Interactive JS Console
```
mongodb-osx-x86_64-2.2.2/bin/mongo
```

## Install Ruby Packages

Make sure you have Ruby 1.9.3 installed.

```
gem update --system
gem install pubnub
gem install mongo
gem install bson_ext
```

## Run PubNub MongoDB Ruby Pipe

```
```



# NOTES NOTES NOTES

You should check this out.
It's a new tool provided by PubNub that will pipe all inserts
into your MongoDB Collections.
This happens over a PubNub dispatch process via a Pipeline Communication
You developers looking for a cool new tool









------------ notes ------------

# TODO TODO TODO TODO TODO

 - TODO - change gun.io-blog name to pubnub-mongo-pipe
 - TODO - use PubNub websocket api
 - TODO - rename pubnub-mongodb-ruby-pipe.rb to pubnub-mongodb-pipe.rb
 - TODO - logo brand pipe MongoDB <-> PubNub <-> iOS/Web/Etc.
 - TODO - 
 - TODO - 
 - TODO - 
 - TODO - 
 - TODO - 


 - sections
    - intro
        - client display example <screenshot> LIVE MAP <screenshot>
        - mention Gun.IO somewhere
        - mention idea of taking a project on Gun.IO and doing it open source
        - branded logo
        - how it works lucid charts diagram
            - Your Data Input -> MongoDB -> PubNub::MongoDB::Pipe -> iOS Phone or Chrome
        - included S3/fastly Link

        - talk about MapHub (section below)
            - originally requested a node solution however this works on all platforms and streams data easily to both mobile and web devices.
        - talk about tailable cursors in mongo and 
        - multiple different PubNub Pipe Options including Ruby, Python and Node.JS

    - setup
    - code example
    - dev console
    - 


MapHub Live Data (MongoDB)
$1,025 estimate
Description
job for xer0x

Requirements
Develop a node solution to our existing platform. (data just needs to stream live data).


JavaScript Ruby Python (app engine) PHP and REST.

Mention Projects:
http://gun.io/contracts/185/python-appengine-application - social network (app enigne)
http://gun.io/contracts/175/live-data-mongodb - streaming live data from mongodb
http://gun.io/contracts/20/app-for-multiple-platforms-infochimp-work - multi-platform (just a reference to discuss in the blog)
http://gun.io/contracts/38/backend-web-development - simple web dev (use as reference in blog).


http://gun.io/contracts/46/node-guru-needed-for-development-of-irc-and-web-m - good real-time reference.
http://gun.io/contracts/171/htmlcssjs-freelancer - mobile reference     

programming is easy when all you need to do is copy/paste together different code snipptes.

https://github.com/doctrine/doctrine-mongodb-odm-tailable-cursor-bundle - !!!!!!!!


------------------------------------------------------------------------------
Mobile App Consuming PubNub MongoDB Change Hooks
------------------------------------------------------------------------------
You can use a Mobile Phone, Tablet or Web Browser.
