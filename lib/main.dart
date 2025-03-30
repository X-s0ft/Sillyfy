import 'package:flutter/material.dart';
import '/res/router/rout.dart';
import './res/theme.dart';


void main() {
  runApp(const MainStart());
}


class MainStart extends StatelessWidget {
  const MainStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: lightversion,
      routes: rout,
    );
  }
}
