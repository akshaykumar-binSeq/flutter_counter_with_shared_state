import 'package:flutter/material.dart';

import 'inherited_wrapper.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({Key? key}) : super(key: key);

  @override
  IncrementButtonState createState() => IncrementButtonState();
}

class IncrementButtonState extends State<IncrementButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text("Increment"),
    );
  }

  onPressed() {
    InheritedWrapperState state = InheritedWrapper.of(context);
    state.incrementCounter();
  }
}


