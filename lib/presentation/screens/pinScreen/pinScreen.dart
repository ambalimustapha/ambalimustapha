import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyx/data/models%20/pinModel.dart';

class PinScreen extends StatelessWidget {
  MyPins? pins;
  PinScreen({this.pins});

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
          'My Pins',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: pinList.length,
        itemBuilder: (context, index) {
          MyPins pins = pinList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      pins.imageUrl!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 12),

                // Row of Buttons
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
                          ();
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
                ),
                Divider(
                  color: Color(0xFFEA4335),
                  thickness: 0.4,
                  indent: 8,
                  endIndent: 8,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
