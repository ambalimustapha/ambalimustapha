import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plyx/data/repositories/slidePageRoute/slidePageRoute.dart';
import 'package:plyx/presentation/screens/sliderScreens/slideScreenThree.dart';

class SlideScreenTwo extends StatelessWidget {
  const SlideScreenTwo({super.key});

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
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/db04/d676/9d2e79823c7fd40512bb523642b552df?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=aCSfcbjMAecPhpUO~o-uzmLS2l0iKzh02GFzto78uOz~2cVtqO9LyeAIIiI7bwZ~tyNKbtMegfkSzcoKnlXU5B7hTcteEkmqgqRB64zJMGPHLznMS~kWNssDC8sTtPznhVLqu~3j~~5~E9NcanCSEb8ddVeLhpnkidDm0W5ZD6f8fIh90R6BpVh9vHk91QE6NNBK3gP452-qbEi9a5M-pf-jWy5sxO2JBqS~Og2zaEZ0a4fQAPf-xwFZYr0xjtFsuBF6uhhVRigaxNvyphGfvG7lKGeBxW8g8NdDFCyOX~zPZiZHl7GOciBQT9c2eU8mB-VmUs7Cwrezh9O3unhfxQ__',
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
                  'Build Your Movie',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Mulish'),
                ),
                Text(
                  'Streak',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mulish',
                      fontSize: 36,
                      color: Color(0xFFFFB6B6)),
                ),
                SizedBox(height: 20),
                Text(
                  'Watch, rate, and upvote movies to keep your streak alive. The more you watch, the bigger your cinephile status!',
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
                  color: Colors.red.shade800,
                ),
                SizedBox(width: 3),
                Icon(
                  size: 12,
                  CupertinoIcons.rectangle_fill,
                  color: Colors.red.withOpacity(0.2),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, SlidePageRoute(page: SlideScreenThree()));
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
