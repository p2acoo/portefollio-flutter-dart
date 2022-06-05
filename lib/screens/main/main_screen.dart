import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import '../../responsive.dart';
import 'compenents/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //permet de prendre 50% de la largeur de l'écran
            if (Responsive.isDesktop(context))
              Expanded(
                //Permet de prendre 75% de la largeur de l'écran
                //Permet de prendre (2+7 = 9) donc 2/9 = 0.22 donc 22% de la largeur de l'écran
                flex: 2,
                child: SideMenu(),
              ),
            SizedBox(width: defaultPadding),
            Expanded(
              //Permet de prendre 7/9 = 0.78 donc 78% de la largeur de l'écran
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...children,
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
