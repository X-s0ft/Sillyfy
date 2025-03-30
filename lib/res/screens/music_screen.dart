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
        title: Center(child:  Text(
          'Just relax',
          style: Theme.of(context).textTheme.bodyLarge,
        ),),
      ),

      body: Center( child: 
        Column(
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

//TODO: На странице должно отображаться:
// 1 - Аппбар на котором название приложения, отдельная справа кнопка настройки
// 2 - Несколько (2) плейлиста
// 3 - отдельная висящая кнопка рандомного плейлиста