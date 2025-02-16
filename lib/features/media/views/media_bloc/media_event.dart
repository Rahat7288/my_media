abstract class MediaEvent {}

class MediaPlay extends MediaEvent {
  final String mediaUrl;
  MediaPlay(this.mediaUrl);
}

class MediaPause extends MediaEvent {}
