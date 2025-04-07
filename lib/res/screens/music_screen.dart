import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Just relax',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              'Hello in \nSillyfy',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            SizedBox(height: 15),
            Text(
              'This music for silly people',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: 
// ВЫвод всей музыки 