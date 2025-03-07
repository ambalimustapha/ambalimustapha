import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:plyx/data/repositories/slidePageRoute/slidePageRoute.dart';
import 'package:plyx/presentation/screens/homeScreen/homeScreen.dart';

class PersonalizedScreen extends StatelessWidget {
  const PersonalizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120, right: 30, left: 30),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Personalize',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NicoMoji',
                      fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Select movies, genres, actors and themes that you enjoy',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  dashPattern: [8, 4],
                  color: Color(0xFFFFB6B6).withOpacity(0.4),
                  strokeWidth: 2,
                  child: Container(
                    width: screenWidth,
                    height: 400,
                    child: Column(
                      children: [
                        Row(),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 230,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF65558F),
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, SlidePageRoute(page: HomeScreen()));
                },
                child: Text("next",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: 'NicoMoji')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
