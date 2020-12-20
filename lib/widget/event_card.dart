import 'package:flutter/material.dart';

// import '../provider/event_provider.dart';
import '../model/event.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard(this.event);

  Color get eventColor {
    if (event.eventStatus == EventStatus.Needed) {
      return Colors.yellow.withOpacity(0.5);
    } else if (event.eventStatus == EventStatus.Scheduled) {
      return Colors.blue.withOpacity(0.5);
    } else {
      return Colors.green.withOpacity(0.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        width: double.infinity,
        // height: 340.0,
        decoration: BoxDecoration(
          color: eventColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(event.authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      event.authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      event.timeAgo,
                      style: TextStyle(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.white,
                      onPressed: () => print('More'),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    child: Container(
                      width: double.infinity,
                      height: 240.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage(event.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 32.0,
                                  color: Colors.white,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '2,515',
                                  style: Theme.of(context)
                                      .accentTextTheme
                                      .subtitle1,
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
