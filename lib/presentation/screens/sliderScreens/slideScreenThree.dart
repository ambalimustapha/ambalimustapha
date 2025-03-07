import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plyx/data/repositories/slidePageRoute/slidePageRoute.dart';
import 'package:plyx/presentation/screens/loginScreen/loginScreen.dart';
import 'package:plyx/presentation/screens/personalizedScreen/personalizedScreen.dart';

class SlideScreenThree extends StatelessWidget {
  const SlideScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/02a5/14dd/1f2f8fd4ff5b0d593f068272e0997aaa?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=K2eZydEjrF2Yjvhf82sLA2LyZ~IMNY8U8xIMngHs7NaOirweVmlaLu3nisqbZExrg2F-6y5TZ5LpN~evlpqoOv5574cxBkJJecB1jXnkEjebf8bd9q4THn7oHC~Nb8Bywk0lmBqY6aeTk~ubYws8msxKQgo2miDWrFoNIDTdmPeGsBhlKYXH55ebw57ARQh-i5Dq1Wz-yxuwBBNofBd9CzAxp4Xz4JK9VR6YU1RmJ7qfEmX4SgqX9I0LZYyBVespvYaer59hbMtbjoWRDVQx8ms8IP8kI2TbDVh4ZS1uXRlwTFHlQhi40INSjJgYqcW05xMd-Hk~eO7MEAzD-qLzBQ__',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find Where to',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      fontFamily: 'Mulish'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Watch',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          fontFamily: 'Mulish'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Instantly',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mulish',
                          fontSize: 36,
                          color: Color(0xFFFFB6B6)),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Get a handpicked movie recommendation every day. From classics to hidden gems, there’s always something new to watch!',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.withOpacity(0.2),
                ),
                SizedBox(width: 3),
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.withOpacity(0.2),
                ),
                SizedBox(width: 3),
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.shade800,
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, SlidePageRoute(page: LogInScreen()));
                },
                icon: Icon(
                  CupertinoIcons.arrow_right_circle_fill,
                  size: 50,
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }
}
