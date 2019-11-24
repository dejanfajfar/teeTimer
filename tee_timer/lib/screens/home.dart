import 'package:flutter/material.dart';
import 'package:tee_timer/screens/components/HomeTabBody.dart';

import 'components/historyTabBody.dart';
import 'components/timerTabBody.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.list)),
                Tab(icon: Icon(Icons.timer)),
                Tab(icon: Icon(Icons.history)),
              ],
            ),
            title: Row(
              children: <Widget>[
                Icon(Icons.local_cafe),
                Text("Tee timer"),
              ],
            )
          ),
          body: TabBarView(
            children: [
              HomeTabBody(),
              TimerTabBody(),
              HistoryTabBody(),
            ],
          ),
        )
    );
  }
}