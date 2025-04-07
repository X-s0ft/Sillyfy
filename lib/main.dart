import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:relax_app/res/func/all_func.dart';
import 'package:relax_app/res/theme.dart';

import '/res/router/rout.dart';

void main() {
  runApp(MainStart());
}

class MainStart extends StatefulWidget {
  const MainStart({super.key});

  @override
  State<MainStart> createState() => _MainStartState();
}

class _MainStartState extends State<MainStart> {

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: true,
    //   theme: lightversion,
    //   darkTheme: darkversion,
    //   routes: rout,
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger(lightversion)),
      ],
      child: MaterialTheme(),
    );
  }
}

class MaterialTheme extends StatelessWidget {
  const MaterialTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: rout,
      theme: theme.getTheme,
    );
  }
}


// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ThemeChanger(lightTheme)),
//       ],
//       child: MaterialAppWithTheme(),
//     );
//   }
// }

// class MaterialAppWithTheme extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final theme = Provider.of<ThemeChanger>(context);
//     return MaterialApp(
//       theme: theme.getTheme,
//       home: FirstScreen(),
//     );
//   }