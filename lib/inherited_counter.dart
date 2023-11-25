import 'package:flutter/material.dart';

import 'inherited_wrapper.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({
    Key? key,
    required Widget child,
    required this.data,
    required this.counter,
  }) : super(key: key, child: child);

  final int counter;
  final InheritedWrapperState data;

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return counter != oldWidget.counter;
  }
}
