import 'package:bloc/bloc.dart';
import 'package:my_media/app/services/media_service.dart';
import 'package:my_media/features/media/views/media_bloc/media_event.dart';
import 'package:my_media/features/media/views/media_bloc/media_state.dart';

class MediaBloc extends Bloc<MediaEvent, MediaState> {
  final MediaService mediaService;
  MediaBloc({required this.mediaService}) : super(MediaInitial());

  @override
  Stream<MediaState> mapEventToState(MediaEvent event) async* {
    if (event is MediaPlay) {
      await mediaService.play(event.mediaUrl);
      yield MediaPlaying();
    } else if (event is MediaPause) {
      await mediaService.pause();
      yield MediaPaused();
    }
  }
}
