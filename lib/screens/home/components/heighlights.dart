import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 1,
                      label: "%",
                    ),
                    label: "Top TryHackMe monde",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 20,
                      label: "+",
                    ),
                    label: "Projects  ",
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 300,
                      label: "+",
                    ),
                    label: "Follow Github",
                  ),
                  HeighLight(
                    counter: AnimatedCounter(
                      value: 100,
                      label: "+",
                    ),
                    label: "CTF  ",
                  ),
                ],
              )
            ])
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 1,
                    label: "%",
                  ),
                  label: "Top TryHackMe monde",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 20,
                    label: "+",
                  ),
                  label: "Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 300,
                    label: "+",
                  ),
                  label: "Follow Github",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 100,
                    label: "+",
                  ),
                  label: "CTF  ",
                ),
              ],
            ),
    );
  }
}
