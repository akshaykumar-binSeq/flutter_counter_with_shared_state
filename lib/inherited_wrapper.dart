import 'package:flutter/material.dart';

import 'inherited_counter.dart';

class InheritedWrapper extends StatefulWidget {
  final Widget child;
  const InheritedWrapper({
    Key? key,
    required this.child,
  }) : super(
          key: key,
        );

  static InheritedWrapperState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedCounter>())!
        .data;
  }

  @override
  InheritedWrapperState createState() => InheritedWrapperState();
}

class InheritedWrapperState extends State<InheritedWrapper> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCounter(
      data: this,
      counter: counter,
      child: widget.child,
    );
  }
}
