#import('dart:html');
 
void main () {
  var videoClip = new VideoElement();
  videoClip.controls = true;
  videoClip.height=500;
  videoClip.width=500;
  videoClip.autoplay=true;
  videoClip.on['canplay'].add((_) {
    videoClip.play();
  });
 
  var s1 = new SourceElement();
  s1.src = "http://html5demos.com/assets/dizzy.mp4";
  s1.type = "video/mp4";
 
  var s2 = new SourceElement();
  s2.src = "http://html5demos.com/assets/dizzy.webm";
  s2.type = "video/webm";
 
  var s3 = new SourceElement();
  s3.src = "http://html5demos.com/assets/dizzy.ogv";
  s3.type = "video/ogv";
 
  videoClip.nodes.add(s1);
  videoClip.nodes.add(s2);
  videoClip.nodes.add(s3);
 
  document.body.nodes.add(videoClip);
}
