import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showRateDialog(BuildContext context) async {
  int selectedRating = 0; // Track the rating selection

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: StatefulBuilder(
          builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFEBDDBD)),
              height: 350,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Interstellar",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NicoMoji')),
                  SizedBox(height: 10),
                  Text("Review this Movie",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mulish')),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(
                          index < selectedRating
                              ? CupertinoIcons.star_fill
                              : CupertinoIcons.star,
                          color: Colors.red,
                          size: 32,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedRating = index + 1; // Update rating
                          });
                        },
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: 230,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF65558F),
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              duration: Duration(seconds: 3),
                              content: Text(
                                "Thanks for your $selectedRating star rating!",
                                style: TextStyle(
                                    fontFamily: 'NicoMoji',
                                    color: Colors.white),
                              )),
                        );
                      },
                      child: Text(
                        "Rate",
                        style: TextStyle(
                            fontFamily: 'NicoMoji',
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close dialog
                    },
                    child: Text(
                      "No, Thanks!",
                      style: TextStyle(
                          color: Color(0xFFB3261E),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
