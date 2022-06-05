import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);
  final String label;
  final int value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: Duration(seconds: 3),
        builder: (context, value, child) => Text("$value$label",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor)));
  }
}
