import 'package:flutter/material.dart';
import 'package:my_child/ui/navigation/main_navigation.dart';
import 'package:my_child/ui/widget/home_screen.dart';
import 'package:my_child/ui/widget/screen_menu.dart';
import 'package:my_child/ui/widget/widget_doctor.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MainNavigatorNames.homeScreen: (context) => const HomeScreen(),
        MainNavigatorNames.screenMenu: (context) => const ScreenMenu(),
        MainNavigatorNames.widgetDoctor: (context) => const WidgetDoctor(),
      },
      initialRoute: MainNavigatorNames.homeScreen,
    );
  }
}
