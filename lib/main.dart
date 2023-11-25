import 'package:flutter/material.dart';

import 'counte_display.dart';
import 'inherited_wrapper.dart';
import 'increment_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InheritedWrapper(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('App'),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                CounterDisplay(),
                IncrementButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
