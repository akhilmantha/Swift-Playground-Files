//: Playground - noun: a place where people can play

import UIKit

class ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.testDownloadSpeedWithTimout(5.0, completionHandler: {(megabytesPerSecond: CGFloat, error: NSError) -> Void in
            print("%0.1f; error = \(megabytesPerSecond)")
        })
    }
    /// Test speed of download
    ///
    /// Test the speed of a connection by downloading some predetermined resource. Alternatively, you could add the
    /// URL of what to use for testing the connection as a parameter to this method.
    ///
    /// @param timeout             The maximum amount of time for the request.
    /// @param completionHandler   The block to be called when the request finishes (or times out).
    ///                            The error parameter to this closure indicates whether there was an error downloading
    ///                            the resource (other than timeout).
    ///
    /// @note                      Note, the timeout parameter doesn't have to be enough to download the entire
    ///                            resource, but rather just sufficiently long enough to measure the speed of the download.
    
    func testDownloadSpeedWithTimout(timeout: NSTimeInterval, completionHandler: ) {
        var url = NSURL(string: "http://insert.your.site.here/yourfile")!
        self.startTime = CFAbsoluteTimeGetCurrent()
        self.stopTime = self.startTime
        self.bytesReceived = 0
        self.speedTestCompletionHandler = completionHandler
        var configuration = NSURLSessionConfiguration.ephemeralSessionConfiguration()
        configuration.timeoutIntervalForResource = timeout
        var session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
        session.dataTaskWithURL(url).resume()
    }
    
    func URLSession(session: NSURLSession, dataTask: NSURLSessionDataTask, didReceiveData data: NSData) {
        self.bytesReceived += data.length
        self.stopTime = CFAbsoluteTimeGetCurrent()
    }
    
    func URLSession(session: NSURLSession, task: NSURLSessionTask, didCompleteWithError error: NSError?) {
        var elapsed = self.stopTime - self.startTime
        var speed: CGFloat = elapsed != 0 ? self.bytesReceived / (CFAbsoluteTimeGetCurrent() - self.startTime) / 1024.0 / 1024.0 : -1
        // treat timeout as no error (as we're testing speed, not worried about whether we got entire resource or not
        if error == nil || ((error!.domain == NSURLErrorDomain) && error!.code == NSURLErrorTimedOut) {
            self.speedTestCompletionHandler(speed, nil)
        }
        else {
            self.speedTestCompletionHandler(speed, error)
        }
    }
}





var str = "Hello, playground"
