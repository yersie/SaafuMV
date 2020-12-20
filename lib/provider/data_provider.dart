import 'package:flutter/foundation.dart';

import '../model/event.dart';
import '../model/user.dart';

class Data {
  static final List<Event> events = [
    Event(
      authorName: 'Mohamed Ahmed',
      authorImageUrl: 'asset/img/user_profile/0.jpg',
      timeAgo: '5 min',
      imageUrl: 'asset/img/event/0.png',
      eventStatus: EventStatus.Completed,
    ),
    Event(
      authorName: 'Sam Martin',
      authorImageUrl: 'asset/img/user_profile/1.jpg',
      timeAgo: '10 min',
      imageUrl: 'asset/img/event/1.png',
      eventStatus: EventStatus.Scheduled,
    ),
    Event(
      authorName: 'Ibrahim Mohamed',
      authorImageUrl: 'asset/img/user_profile/2.jpg',
      timeAgo: '10 min',
      imageUrl: 'asset/img/event/2.png',
      eventStatus: EventStatus.Needed,
    ),
    Event(
      authorName: 'Khadija Ali',
      authorImageUrl: 'asset/img/user_profile/3.jpg',
      timeAgo: '10 min',
      imageUrl: 'asset/img/event/3.png',
      eventStatus: EventStatus.Completed,
    ),
  ];

  static final List<User> rankings = [
    User(
      email: 'example@email.com',
      username: 'gr33n-b0y',
      fullName: 'Baby Yoda',
      points: 120,
      profileImage: 'asset/img/user_profile/4.jpg',
      rank: 1,
    ),
    User(
      email: 'example@email.com',
      username: 'mode',
      fullName: 'Mohamed Ahmed',
      points: 104,
      profileImage: 'asset/img/user_profile/0.jpg',
      rank: 2,
    ),
    User(
      email: 'example@email.com',
      username: 'Sammy',
      fullName: 'Sam Martin',
      points: 99,
      profileImage: 'asset/img/user_profile/1.jpg',
      rank: 3,
    ),
    User(
      email: 'example@email.com',
      username: 'hajja',
      fullName: 'Khadhija Ali',
      points: 67,
      profileImage: 'asset/img/user_profile/3.jpg',
      rank: 4,
    ),
    User(
      email: 'example@email.com',
      username: 'm.ali',
      fullName: 'Mohamed Ali',
      points: 30,
      profileImage: 'asset/img/user_profile/2.jpg',
      rank: 5,
    ),
  ];
}
