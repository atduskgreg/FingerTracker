## FingerTracker

[Download here](https://github.com/downloads/atduskgreg/FingerTracker/FingerTracker.zip)

<a href="http://www.flickr.com/photos/unavoidablegrain/7953525620/" title="Finger Tracking with the Kinect, Processing, and Marching Squares by atduskgreg, on Flickr"><img src="http://farm9.staticflickr.com/8171/7953525620_7f04899ddf.jpg" width="500" height="392" alt="Finger Tracking with the Kinect, Processing, and Marching Squares"></a>

FingerTracker is a Processing library that does real-time finger-tracking from depth images. It is based on work done by Murphy Stein at NYU. It uses fast marching squares to find the contour of the hand and then estimates finger endpoints by looking for inflections in the curvature of the contour. It can work with depth maps from either OpenNI or libfreenect (it expects the depth maps to be scaled to the 500-2047 range provided by the Kinect drivers).

Use it with either [Shiffman's libfreenect wrapper](http://www.shiffman.net/p5/kinect/) or [SimpleOpenNI](http://code.google.com/p/simple-openni/).

See the FingerTrackerKinect example for usage.
