import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plyx/presentation/widgets%20/rateAppScreen.dart';
import 'package:plyx/presentation/screens/loginScreen/loginScreen.dart';
import 'package:plyx/presentation/widgets%20/appBar/homeScreenAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          userName: 'Mustapha Adewole',
          profileImageUrl: 'assets/images/mus.JPG'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Divider(
                  color: Color(0xFFEA4335),
                  thickness: 0.4,
                  indent: 8,
                  endIndent: 8,
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'FILM OF THE DAY',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Mulish',
                  color: Color(0xFFFF3951),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/feedScreen');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: 280,
                      width: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://s3-alpha-sig.figma.com/img/8010/9cda/635485bf37e14da31b3a131a8bb4be82?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=bzTLwMZp5dTK2s8ySGL3oUGBy2QIcoL7BuTQp49BW52Sg9a6kqRgCx6bBCbQm190CSJ7uIv9-ksnJj9ua3NQ6fco2rhw04xO~p2ysVKc4c~QuRDu03Y7PHr63SN17HKBOIBBj2d7yLjKFtfpijm0Nua4pbts8WHSOMFY3jPUucMqDcE5NzGs8b6LDIwd-dua15i1zAKTF1kjCF~KnpcHC~DxzlFyANNJKMHO5rc9dpRrczou4KAQEas6axUxVln--Pun77tKKzLAQDQPPsdsH7ppLo2sVdvejGy5MQIetcqn7twRfhcX52kCqrephZSJs~1~2nsLVQAQnEWlSl0Z6Q__',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Interstellar',
                    style: TextStyle(
                        fontFamily: 'NicoMoji',
                        fontSize: 39,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2014',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.circle_fill,
                        size: 10,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Action',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.circle_fill,
                        size: 10,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '2h 49m',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 12,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 12,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 12,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 12,
                      ),
                      SizedBox(width: 8),
                      Icon(
                        CupertinoIcons.star_fill,
                        size: 12,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    textAlign: TextAlign.center,
                    'When Earth becomes uninhabitable in the future, a farmer and ex-NASA pilot, Joseph Cooper, is tasked to pilot a spacecraft, along with a team of researchers, to find a new planet for humans.',
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF65558F),
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            showRateDialog(context);
                          },
                          child: Text("Rate",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'NicoMoji')),
                        ),
                      ),
                      SizedBox(width: 8),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFFD8E4),
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Watch",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'NicoMoji')),
                        ),
                      ),
                      SizedBox(width: 8),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB3261E),
                            foregroundColor: Colors.black,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/pins');
                          },
                          child: Text("Pin",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: 'NicoMoji')),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
