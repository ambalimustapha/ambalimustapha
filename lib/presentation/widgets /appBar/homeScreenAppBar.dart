import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String profileImageUrl;

  const CustomAppBar({
    Key? key,
    required this.userName,
    required this.profileImageUrl,
  }) : super(key: key);

  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 18) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFEBDDBD),
      elevation: 0,
      title: Row(
        children: [
          // User Profile Picture
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profileScreen');
            },
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(profileImageUrl),
            ),
          ),
          const SizedBox(width: 12),

          // Column for Greeting and Username
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                getGreeting(),
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Text(
                userName,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7D5260)),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(0.1),
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notificationScreen');
                },
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                  size: 18,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
