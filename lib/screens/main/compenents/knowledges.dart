import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Connaisances",
              style: Theme.of(context).textTheme.subtitle2),
        ),
        KnowledgeText(text: "Top 1% monde sur Tryhackme.com"),
        KnowledgeText(text: "Maitrise de l'anglais (B1)"), // KnownledgeText
        KnowledgeText(text: "GIT"),
        KnowledgeText(text: "Linux"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
