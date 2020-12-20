import 'package:flutter/foundation.dart';

import '../model/event.dart';

class Events with ChangeNotifier {
  final List<Event> events = [
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
      authorName: 'Hawwa Ali',
      authorImageUrl: 'asset/img/user_profile/3.jpg',
      timeAgo: '10 min',
      imageUrl: 'asset/img/event/3.png',
      eventStatus: EventStatus.Completed,
    ),
  ];
}
