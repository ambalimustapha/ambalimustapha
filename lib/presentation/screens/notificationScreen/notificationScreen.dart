import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyx/data/models%20/notificationModel.dart';

class NotificationScreen extends StatelessWidget {
  MyNotification? notify;

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
          'Notifications',
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
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, index) {
            MyNotification notify = notificationList[index];
            return Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(notify.imageUrl!),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${notify.firstUser!}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 2),
                      SizedBox(width: 5),
                      Text('commented on'),
                      SizedBox(width: 5),
                      Text(
                        '${notify.secondUser}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 41),
                      Text(
                        notify.report!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  if (notify.newAccount = true && notify.newAccountImg != null)
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(notify.newAccountImg!),
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            Text(
                              'New Account',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Text('created'),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  if (notify.newAccount = true && notify.newAccountImg != null)
                    SizedBox(height: 10),
                  if (notify.hasComment!)
                    Row(
                      children: [
                        SizedBox(width: 50),
                        Text(
                          notify.comment!,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  if (notify.hasComment!) SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(width: 41),
                      Text(
                        notify.date!,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white70,
                    thickness: 1,
                    indent: 1,
                    endIndent: 1,
                  )
                ],
              ),
            );
          }),
    );
  }
}
