import 'package:flutter/material.dart';
// import '../func/all_func.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Options',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      body:  Center(child: Column(children: [
            Text('Oooops... nothin is here', style: Theme.of(context).textTheme.bodySmall,)
          ]
        )
      ),
    );
  }
}
//TODO: На странице должно отображаться:
// 1 - Настройка языка
// 2 - Настройка цветовой схемы 
// 3 - Настройки начального звука