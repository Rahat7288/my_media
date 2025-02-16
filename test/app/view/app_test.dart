import 'package:flutter_test/flutter_test.dart';
import 'package:my_media/app/app.dart';
import 'package:my_media/features/media/views/media_player_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MediaPlayerScreen), findsOneWidget);
    });
  });
}
