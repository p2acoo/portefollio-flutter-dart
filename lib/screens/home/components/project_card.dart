import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(children: [
        Text(
          project.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Spacer(),
        Text(
          project.description!,
          maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(height: 1.5),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child:
              Text("Voir le projet >>", style: TextStyle(color: primaryColor)),
        ),
      ]),
    );
  }
}
