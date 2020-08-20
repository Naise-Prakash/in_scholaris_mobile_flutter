import 'package:flutter/material.dart';
import './onboardingscreen/onboarding_screen_ui.dart';
import 'onboardingscreen/splashscreen.dart';
import 'homepage/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var screen;
  @override
  Widget build(BuildContext context) {
    screen = HomePage();
    splashCounter();
    return MaterialApp(home: screen);
  }

  splashCounter() {
    Future.delayed(Duration(seconds: 2), () {
      screen = OnboardingScreen();
    });
  }
}
