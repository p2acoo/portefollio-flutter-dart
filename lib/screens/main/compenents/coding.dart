import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgressIndicator(
          pourcentage: 0.8,
          label: "Golang",
        ),
        AnimatedLinearProgressIndicator(
          pourcentage: 0.2,
          label: "Bash",
        ),
        AnimatedLinearProgressIndicator(
          pourcentage: 0.3,
          label: "Javascript",
        ),
        AnimatedLinearProgressIndicator(
          pourcentage: 0.3,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          pourcentage: 0.3,
          label: "CSS",
        ),
      ],
    );
  }
}
