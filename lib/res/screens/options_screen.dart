import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/res/func/switch_change.dart';
import 'package:relax_app/res/theme.dart';
// import '../func/all_func.dart';
import 'dart:developer' as dev;

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  // bool switchtValue = false;

  @override
  Widget build(BuildContext context) {
    var themeProvider=Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Options', style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 600,
                  height: 185,

                  decoration: BoxDecoration(
                    color: mainColorL,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        'Change theme',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(width: 240),
                      Switch(
                        inactiveThumbColor: Color.fromARGB(255, 122, 85, 69),
                        inactiveTrackColor: Color.fromARGB(255, 53, 200, 218),
                        activeColor: Color.fromARGB(255, 122, 85, 69),
                        hoverColor: Colors.white,
                        activeTrackColor: Color.fromARGB(255, 185, 234, 238),
                        value: langvalue, // Начальное состояние
                        onChanged: (bool? value) {
                          setState(() {
                            langvalue = value!;
                            themeProvider.setTheme(themeProvider.getTheme==lightversion?darkversion:lightversion);
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 185,

                  decoration: BoxDecoration(
                    color: mainColorL,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(40),
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Text(
                        'Change language',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(width: 200),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//TODO: На странице должно отображаться:
// 1 - Настройка языка
// 2 - Настройка цветовой схемы 