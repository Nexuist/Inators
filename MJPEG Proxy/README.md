### Introduction

While working on [Doorman](https://github.com/nexuist/Doorman) and [Doorman Remote](https://github.com/nexuist/Doorman-Remote), I ended up making these two snippets for handling MJPEG streams.

`express-mjpeg-proxy.js` is a Node.js module that works with `express` to proxy an existing MJPEG stream over an endpoint.

`MJPEGImageView.swift` is a `UIImageView` class that can access MJPEG streams on iOS.


### Express-MJPEG-Proxy

##### Usage

Simply import the module and create a new `Proxy` object using the URL of the stream. The object will expose a `requestHandler` function that you can use as an express route handler.

##### Example Code

```javascript
	var express = require("express");
	var proxy = require("./express-mjpeg-proxy").Proxy;
	var url = "Insert MJPEG stream here";

	var server = express();
	server.get("/stream", new proxy(url).requestHandler);
```

See the source code for more information.

##### Credits

The following GitHub projects heavily inspired this module:

* [This module](https://github.com/philrene/node-mjpeg-proxy) by philrene
* [This fork of that module ](https://github.com/legege/node-mjpeg-proxy) by legege

### MJPEGImageView

##### Usage

In your storyboard, create and configure an UIImageView. Set its class to MJPEGImageView.

In order to begin streaming, call `stream` with a `URLRequest` object. You can configure headers, authentication, etc. in the request and then pass that to `stream`.

If you want to be notified when the stream has begun, you can set `onLoad` to your own closure.

To end the stream, just call `stop`.

#####  Example Code

```swift
// Assuming cam is an MJPEGImageView
let url = URL(string: "http://ip-to-my-cam-here:99/etc")!
let request = URLRequest(url: url)
// Intensive cybersecurity
request.addValue("Admin", forHTTPHeaderField: "User")
request.addValue("Password", forHTTPHeaderField: "Password")
cam.stream(request: request)
cam.onLoad = {
    print("Streaming started!")
}
```

###### Credits

[This article](http://jeff.mcfadden.io/articles/handling-motion-jpeg-streams-on-ios/) helped a lot.
