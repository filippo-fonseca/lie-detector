import 'package:audioplayers/audio_cache.dart';

class Sound {
  void play(String sound) {
    final player = AudioCache();
    player.play("$sound.mp3");
  }
}
