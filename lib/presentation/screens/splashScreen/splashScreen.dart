import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initState() {
    super.initState();

    // Initializing the AnimationController for blinking effect
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Blinking speed
    )..repeat(reverse: true); // Repeat the animation, reverse it every cycle

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    // Setting up the timer for 5 seconds before moving to the slider page
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/slideScreenOne');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Center(
            child: Text(
              'Plyx',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'NicoMoji',
                  fontSize: 96,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
