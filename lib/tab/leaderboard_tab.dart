import 'package:flutter/material.dart';

import '../model/user.dart';
import '../provider/data_provider.dart';
import '../widget/rank_card.dart';

class LeaderboardTab extends StatelessWidget {
  final _users = Data.rankings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ..._users
                  .map(
                    (user) => RankCard(user: user),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
