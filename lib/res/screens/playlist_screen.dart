import 'package:flutter/material.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Play List',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      body: Center(child: Column(children: [
            Text('Oooops... nothin is here', style: Theme.of(context).textTheme.bodySmall,)
          ]
        )
      ),
    );
  }
}

// На странице должно отображаться:
// 1 - Название музыки
// 2 - Смешная картинка котика
// 3 - Кнопки переклчения на следующий трек
// 4 - Кнопка изменения звука
