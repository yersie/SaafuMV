import 'package:flutter/material.dart';

import '../provider/data_provider.dart';
import '../widget/event_card.dart';

class FeedTab extends StatelessWidget {
  final events = Data.events;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: <Widget>[...events.map((e) => EventCard(e)).toList()],
    );
  }
}
