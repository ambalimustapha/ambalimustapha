import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyx/data/repositories/slidePageRoute/slidePageRoute.dart';
import 'package:plyx/presentation/screens/loginScreen/loginScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBDDBD),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/mus.JPG'),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 12,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Icon(
                            CupertinoIcons.camera,
                            color: Colors.black,
                            size: 20,
                          ),
                        ))
                  ]),
                  SizedBox(height: 20),
                  Text(
                    'Mustapha Adewole',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7D5260),
                        fontFamily: 'Mulish'),
                  ),
                  Text(
                    'mustaphawole@gmail.com',
                    style: TextStyle(
                        fontFamily: 'NicoMoji',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'STREAk',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '27 days',
                    style: TextStyle(
                        fontFamily: 'NicoMoji',
                        fontSize: 25,
                        color: Color(0xFF34A853),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Color(0xFFEA4335),
                    thickness: 0.4,
                    indent: 25,
                    endIndent: 25,
                  )
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.deepPurple,
                          ),
                          child: Icon(
                            CupertinoIcons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20), // Space between icon and text
                        Text(
                          "Profile Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(CupertinoIcons.chevron_forward,
                        color: Colors.white), // Back icon at far right
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFFFD8E4),
                          ),
                          child: Icon(
                            CupertinoIcons.settings_solid,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 20), // Space between icon and text
                        Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(CupertinoIcons.chevron_forward,
                        color: Colors.white), // Back icon at far right
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF65558F),
                          ),
                          child: Icon(
                            CupertinoIcons.headphones,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20), // Space between icon and text
                        Text(
                          "Support",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(CupertinoIcons.chevron_forward,
                        color: Colors.white), // Back icon at far right
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, SlidePageRoute(page: LogInScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEA4335),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.black26,
                          ),
                          child: Icon(
                            CupertinoIcons.arrow_right_square_fill,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20), // Space between icon and text
                        Text(
                          "Sign Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
