import 'package:flutter/material.dart';

class Feed {
  String? userImgUrl;
  String? userName;
  String? duration;
  String? workTitle;
  String? workDescription;
  String? post;
  String? hashtags;
  String? likes;
  String? comments;
  List<String>? imgPost;
  bool? hasHashtags;
  bool? hasImgPost;
  Feed(
      {this.duration,
      this.comments,
      this.hasHashtags = false,
      this.hashtags,
      this.hasImgPost = false,
      this.imgPost,
      this.likes,
      this.post,
      this.userImgUrl,
      this.userName,
      this.workDescription,
      this.workTitle});
}

final List<Feed> feedList = [
  Feed(
      userName: 'Musttie Mann',
      duration: '20 min',
      workTitle: 'Flutter Developer',
      workDescription: 'Boston University',
      post:
          '📚 Just conquered algorithms & data structures! 🎉 Time for a breather. Suggestions for a binge-worthy show? 🍿',
      hashtags: '#StudyBreak #NetflixTime',
      comments: '200',
      likes: '1.6k',
      hasHashtags: true,
      userImgUrl:
          'https://img.freepik.com/free-photo/front-view-smiley-woman-with-earbuds_23-2148613052.jpg'),
  Feed(
    userName: 'Stephen Smith',
    duration: '50 min',
    userImgUrl:
        'https://plus.unsplash.com/premium_photo-1689551670902-19b441a6afde?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww',
    workTitle: 'Software Dev',
    workDescription: 'Pediforte Academy',
    post:
        '💻 Need some desk setup inspo? \n 👀 Check out my cozy study corner! Loving the minimalist  vibes and natural lighting.',
    comments: '1.2k',
    likes: '50.6k',
    hasImgPost: true,
    imgPost: [
      'https://kozl0009.wordpress.com/wp-content/uploads/2014/01/dmall-desk.jpg'
          'https://i0.wp.com/realwoodfloors.com/wp-content/uploads/2023/05/Nathan-Riley-unsplash.jpg?resize=800%2C534&ssl=1'
          'https://resource.logitech.com/w_1206,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/business/personal-workspace/personal-workspace-intro-software-thumbnail.jpg?v=1'
          'https://img.freepik.com/free-photo/computer-screen-office-workspace_23-2148821931.jpg'
    ],
  ),
  Feed(
      userName: 'Musttie Mann',
      duration: '20 min',
      userImgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHQk21cVT4E8J4sVWQfTEIFfk79pYl9oD2sA&s',
      workTitle: 'Flutter Developer',
      workDescription: 'Boston University',
      post:
          '📚 Just conquered algorithms & data structures! 🎉 Time  for a breather. Suggestions for a binge-worthy show? 🍿',
      hashtags: '#StudyBreak #NetflixTime',
      comments: '200',
      likes: '1.6k',
      hasHashtags: true),
  Feed(
    userName: 'Stephen Smith',
    duration: '50 min',
    userImgUrl: 'https://xsgames.co/randomusers/assets/avatars/male/74.jpg',
    workTitle: 'Software Deve',
    workDescription: 'Pediforte Academy',
    post:
        '💻 Need some desk setup inspo? \n 👀 Check out my cozy study corner! Loving the minimalist vibes and natural lighting.',
    comments: '1.2k',
    likes: '50.6k',
    hasImgPost: true,
    imgPost: [
      'https://kozl0009.wordpress.com/wp-content/uploads/2014/01/dmall-desk.jpg'
          'https://i0.wp.com/realwoodfloors.com/wp-content/uploads/2023/05/Nathan-Riley-unsplash.jpg?resize=800%2C534&ssl=1'
          'https://resource.logitech.com/w_1206,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/business/personal-workspace/personal-workspace-intro-software-thumbnail.jpg?v=1'
          'https://img.freepik.com/free-photo/computer-screen-office-workspace_23-2148821931.jpg'
    ],
  ),
  Feed(
      userName: 'Musttie Mann',
      duration: '20 min',
      workTitle: 'Flutter Developer',
      workDescription: 'Boston University',
      userImgUrl:
          'https://dspncdn.com/a1/media/692x/80/ae/44/80ae442a54a07b6619c3b742e47de046.jpg',
      post:
          '📚 Just conquered algorithms & data structures! 🎉 Time for a breather. Suggestions for a binge-worthy show? 🍿',
      hashtags: '#StudyBreak #NetflixTime',
      comments: '200',
      likes: '1.6k',
      hasHashtags: true),
  Feed(
    userName: 'Stephen Smith',
    duration: '50 min',
    workTitle: 'Software Deve',
    userImgUrl: 'https://pbs.twimg.com/media/FGMv1yNXsAMarF_.jpg:large',
    workDescription: 'Pediforte Academy',
    post:
        '💻 Need some desk setup inspo? \n 👀 Check out my cozy study corner! Loving the minimalist vibes and natural lighting.',
    comments: '1.2k',
    likes: '50.6k',
    hasImgPost: true,
    imgPost: [
      'https://kozl0009.wordpress.com/wp-content/uploads/2014/01/dmall-desk.jpg'
          'https://i0.wp.com/realwoodfloors.com/wp-content/uploads/2023/05/Nathan-Riley-unsplash.jpg?resize=800%2C534&ssl=1'
          'https://resource.logitech.com/w_1206,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/business/personal-workspace/personal-workspace-intro-software-thumbnail.jpg?v=1'
          'https://img.freepik.com/free-photo/computer-screen-office-workspace_23-2148821931.jpg'
    ],
  ),
  Feed(
      userName: 'Musttie Mann',
      duration: '20 min',
      workTitle: 'Flutter Developer',
      userImgUrl:
          'https://st4.depositphotos.com/36893736/38441/i/450/depositphotos_384411676-stock-photo-arabic-guy-doing-admiration-symbol.jpg',
      workDescription: 'Boston University',
      post:
          '📚 Just conquered algorithms & data structures! 🎉 Time for a breather. Suggestions for a binge-worthy show? 🍿',
      hashtags: '#StudyBreak #NetflixTime',
      comments: '200',
      likes: '1.6k',
      hasHashtags: true),
  Feed(
    userName: 'Stephen Smith',
    duration: '50 min',
    userImgUrl:
        'https://blog.texasbar.com/files/2011/12/housto-bankruptcy-attorney-adam-schachter1.jpg',
    workTitle: 'Software Dev',
    workDescription: 'Pediforte Academy',
    post:
        '💻 Need some desk setup inspo? \n 👀 Check out my cozy study corner! Loving the minimalist vibes and natural lighting.',
    comments: '1.2k',
    likes: '50.6k',
    hasImgPost: true,
    imgPost: [
      'https://kozl0009.wordpress.com/wp-content/uploads/2014/01/dmall-desk.jpg'
          'https://i0.wp.com/realwoodfloors.com/wp-content/uploads/2023/05/Nathan-Riley-unsplash.jpg?resize=800%2C534&ssl=1'
          'https://resource.logitech.com/w_1206,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/business/personal-workspace/personal-workspace-intro-software-thumbnail.jpg?v=1'
          'https://img.freepik.com/free-photo/computer-screen-office-workspace_23-2148821931.jpg'
    ],
  ),
];
