import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
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
          child: Text("Skills", style: Theme.of(context).textTheme.subtitle2),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                pourcentage: 0.8,
                label: "Golang",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                pourcentage: 0.83,
                label: "SQL",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                pourcentage: 0.6,
                label: "PHP",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                pourcentage: 0.7,
                label: "Python",
              ),
            )
          ],
        )
      ],
    );
  }
}
