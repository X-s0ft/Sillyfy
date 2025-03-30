import 'package:flutter/material.dart';
import 'package:relax_app/res/screens/all_screens.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int _currentindex = 0;
  var listpages = [MusicScreen(), PlaylistScreen(), OptionsScreen()];

  void _onTapitem(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          MediaQuery.of(context).size.width < 640
              ? BottomNavigationBar(
                currentIndex: _currentindex,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.music_note_outlined),
                    label: 'music',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.queue_music_outlined),
                    label: 'play list',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.reorder_outlined),
                    label: 'options',
                  ),
                ],
                onTap: _onTapitem,
              )
              : null,
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 640)
            NavigationRail(
              onDestinationSelected: _onTapitem,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.music_note_outlined),
                  label: Text('music'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.queue_music_outlined),
                  label: Text('play list'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.reorder_outlined),
                  label: Text('options'),
                ),
              ],
              selectedIndex: _currentindex,
              leading: SizedBox(height: 45,),
              labelType: NavigationRailLabelType.all,
            ),
          VerticalDivider(thickness: 1, width: 1, color: Color.fromARGB(255, 185, 234, 238)),
          Expanded(child: listpages[_currentindex]),
        ],
      ),
    );
  }
}
