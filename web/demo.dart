import 'dart:html';
import 'presentation.dart';

num rotatePos = 0;

void main() {
  var presentation = new Presentation(query("#render"), query("#scene"));
  
  /*
  presentation.addHtmlSlide("Slide1", 1.0, 0.0,    0.0,    20000.0,   0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide2", 1.0, -300.0, 0.0,    0.0,     0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide3", 1.0, 300.0,  0.0,    0.0,     0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide4", 1.0, 0.0,    200.0,  0.0,     0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide5", 1.0, 0.0,    -200.0, 0.0,     0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide6", 1.0, 0.0,    0.0,    -800.0,  0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide7", 1.0, -700.0, -150.0, 150.0,   0.0,0.0,90.0);
  presentation.addHtmlSlide("Slide8", 1.0, -100.0,  100.0, 150.0,   70.0,0.0,0.0);
  presentation.addHtmlSlide("Slide9", 1.0, 150.0,  -300.0, 300.0,   0.0,70.0,0.0);
  */
  
  presentation.addHtmlSlide("Slide1", 1.0, -300.0,  -300.0, -300.0,  0.0,0.0,0.0);
  presentation.addHtmlSlide("Slide2", 1.0, -300.0,  -300.0, -300.0,  90.0,0.0,0.0);
  presentation.addHtmlSlide("Slide3", 1.0, -300.0,  -300.0, -300.0,  0.0,90.0,0.0);
  presentation.addHtmlSlide("Slide4", 1.0, -300.0,  -300.0, -300.0, 90.0,90.0,90.0);
 

  // Handle key events.
  document.on.keyDown.add((KeyboardEvent event) {
    switch (event.keyIdentifier) {
      case KeyName.LEFT:
        presentation.previous();
        break;
      case KeyName.RIGHT:
        presentation.next();
        break;
    }
    window.scrollTo(0, 0);
  });
}