import 'package:flutter/material.dart';
import 'package:plyx/presentation/screens/feedScreen/feedScreen.dart';
import 'package:plyx/presentation/screens/notificationScreen/notificationScreen.dart';
import 'package:plyx/presentation/screens/pinScreen/pinScreen.dart';
import 'package:plyx/presentation/screens/profileScreen/profileScreen.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenOne.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenThree.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenTwo.dart';
import 'package:plyx/presentation/screens/splashScreen/splashScreen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFEBDDBD)),
      debugShowCheckedModeBanner: false,
      title: 'Plyx',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/slideScreenOne': (context) => SlideScreenOne(),
        '/slideScreenTwo': (context) => SlideScreenTwo(),
        '/slideScreenThree': (context) => SlideScreenThree(),
        '/profileScreen': (context) => ProfileScreen(),
        '/pins': (context) => PinScreen(),
        '/notificationScreen': (context) => NotificationScreen(),
        '/feedScreen': (context) => FeedScreen(),
      },
    );
  }
}
