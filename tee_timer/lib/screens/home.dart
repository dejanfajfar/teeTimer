import 'package:flutter/material.dart';
import 'package:tee_timer/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.list)),
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
              Body(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        )
    );
  }
}