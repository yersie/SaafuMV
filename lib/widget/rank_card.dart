import 'package:flutter/material.dart';

import '../model/user.dart';

class RankCard extends StatelessWidget {
  final User user;

  RankCard({
    this.user,
  });

  Color get rankColor {
    switch (user.rank) {
      case 1:
        return Colors.yellow;
      case 2:
        return Colors.grey.shade200;
      case 3:
        return Colors.orange;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: rankColor.withOpacity(0.5),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(user.profileImage),
          radius: 50.0,
        ),
        title: Text(user.fullName),
        subtitle: Text(user.username),
        trailing: CircleAvatar(
          backgroundColor: rankColor,
          radius: 25.0,
          child: Text(
            user.rank.toString(),
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
