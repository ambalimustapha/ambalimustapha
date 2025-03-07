import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyx/data/models%20/feedModel.dart';

class FeedScreen extends StatelessWidget {
  Feed? feed;

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
          'Feed',
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
          itemCount: feedList.length,
          itemBuilder: (context, index) {
            Feed feed = feedList[index];
            return Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(feed.userImgUrl!),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                feed.userName!,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                CupertinoIcons.circle_fill,
                                size: 4,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                feed.duration!,
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                feed.workTitle!,
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 8),
                              Container(
                                width: 1,
                                height: 10,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                feed.workDescription!,
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      Icon(CupertinoIcons.ellipsis)
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(feed.post!),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.heart,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            feed.likes!,
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            CupertinoIcons.news,
                            color: Colors.grey,
                            size: 16,
                          ),
                          SizedBox(width: 5),
                          Text(
                            feed.comments!,
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.paperplane,
                              size: 16, color: Colors.grey),
                          SizedBox(width: 20),
                          Icon(
                            CupertinoIcons.pin_fill,
                            size: 16,
                            color: Colors.purple,
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
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
