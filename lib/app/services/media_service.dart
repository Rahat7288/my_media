import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MediaService {
  static const platform = MethodChannel("com.my_media.org.my_media/media");

  Future<void> play(String mediaUrl) async {
    try {
      await platform.invokeMethod('play', {'url': mediaUrl});
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to play: '${e.message}'.");
      }
    }
  }

  Future<void> pause() async {
    try {
      await platform.invokeMethod('pause');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to pause: '${e.message}'.");
      }
    }
  }

  Future<void> stop() async {
    try {
      await platform.invokeMethod('stop');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to stop: '${e.message}'.");
      }
    }
  }
}
