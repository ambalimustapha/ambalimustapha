import 'package:flutter/material.dart';

class MyNotification {
  String? imageUrl;
  String? firstUser;
  String? secondUser;
  String? report;
  String? date;
  String? comment;
  bool? hasComment;
  bool? hasButtons;
  bool? newAccount;
  String? newAccountImg;

  MyNotification(
      {this.imageUrl,
      this.date,
      this.firstUser,
      this.report,
      this.comment,
      this.secondUser,
      this.newAccountImg,
      this.hasButtons = false,
      this.hasComment = false,
      this.newAccount = false});
}

final List<MyNotification> notificationList = [
  MyNotification(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
    firstUser: 'Musttie Ade',
    secondUser: 'Isla Nublar',
    report: 'SOC2 compliance report',
    date: 'Last Wednesday at 9:42 AM',
  ),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwEuGOXJITETXVKtEXZqzbOZOk8h8ms8tyzQ&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM',
      newAccount: true,
      newAccountImg:
          'https://cdn-icons-png.flaticon.com/512/12449/12449018.png'),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM',
      hasComment: true,
      comment:
          "'Oh, i finished de-bugging the phones, \n but the system's compiling for eighteen \n minutes, or twent...'"),
  MyNotification(
      imageUrl:
          'https://i.pinimg.com/736x/05/a6/a5/05a6a59a6232e68c49dfdb0e48f27cff.jpg',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGNDHGv4p-MMXnqwRdnc9MFa3Ig-w8F-qbxA&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM',
      hasButtons: true),
  MyNotification(
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfeVMJ4QrmnlmDbljWPb9lhiZ3uqiCFsQfKg&s',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
  MyNotification(
      imageUrl:
          'https://i.pinimg.com/736x/1a/e3/c0/1ae3c0fa547963781839c0b8a9ac1c3e.jpg',
      firstUser: 'Musttie Ade',
      secondUser: 'Isla Nublar',
      report: 'SOC2 compliance report',
      date: 'Last Wednesday at 9:42 AM'),
];
