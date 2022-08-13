// learn mixins

abstract class Multimedia {}

// mixin Playable {
mixin Playable on Multimedia {
  String? name;

  void play() {
    print("Play $name");
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print("Stop $name");
  }
}

// ex: class Audio with Playable, Stoppable {
// other ex: class Audio implements Car, HasBrand with Playable, Stoppable {
class Audio extends Multimedia with Playable, Stoppable {
}
class Video extends Multimedia with Playable, Stoppable {
}

void main() {
  var aud = Audio();
  aud.name = "bump.mp3";
  aud.play();
  aud.stop();

  var vid = Video();
  vid.name = "buibu.mp3";
  vid.play();
  vid.stop();
}
