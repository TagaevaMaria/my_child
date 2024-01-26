import 'package:flutter/material.dart';

import 'home_screen.dart';

class FonScreen extends StatelessWidget {
  const FonScreen({Key? key, required HomeScreen child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/fon.jpg'))),
        ));
  }
}
