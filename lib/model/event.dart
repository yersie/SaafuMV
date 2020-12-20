import 'package:flutter/foundation.dart';

enum EventStatus {
  Needed,
  Scheduled,
  Completed,
}

class Event {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;
  EventStatus eventStatus;

  Event({
    @required this.authorName,
    @required this.authorImageUrl,
    @required this.timeAgo,
    @required this.imageUrl,
    @required this.eventStatus,
  });
}
