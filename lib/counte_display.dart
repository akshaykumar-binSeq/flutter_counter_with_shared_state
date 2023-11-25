import 'package:flutter/material.dart';

import 'inherited_wrapper.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final InheritedWrapperState state = InheritedWrapper.of(context);
    return Text('${state.counter}');
  }
}
