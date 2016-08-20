### Usage

In your storyboard, create and configure an UIImageView. Set its class to MJPEGImageView.

In order to begin streaming, call `stream` with a `URLRequest` object. You can configure headers, authentication, etc. in the request and then pass that to `stream`.

If you want to be notified when the stream has begun, you can set `onLoad` to your own closure.

To end the stream, just call `stop`.

### Example Code

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

### Credits

This snippet was developed for [Doorman Remote](https://github.com/nexuist/Doorman-Remote). [This article](http://jeff.mcfadden.io/articles/handling-motion-jpeg-streams-on-ios/) helped a lot.
