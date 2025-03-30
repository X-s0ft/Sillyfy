import '../screens/all_screens.dart';
import '../widgets/all_widgets.dart';

final rout = {
  '/': (context) => NavigationBars(),
  '/musicScreen': (context) => MusicScreen(),
  '/playlist': (context) => PlaylistScreen(),
  '/options': (context) => OptionsScreen(),
};
