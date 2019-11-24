import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:tee_timer/models/historyItem.dart';
import 'package:tee_timer/models/teeData.dart';

class BrewModel extends ChangeNotifier {
  TeeData teeBrewing;
  List<HistoryItem> history;
  Timer timer;
  Duration toCompletion;

  BrewModel(){
    this.teeBrewing = TeeData.black();
    this.history = <HistoryItem>[];
    this.toCompletion = Duration();
  }

  void brew(TeeData tee) {
    this.teeBrewing = tee;
    this.history.add(HistoryItem(tee.name));
    this.toCompletion = Duration(minutes: tee.brewTime);
    notifyListeners();
  }

  List<HistoryItem> getBrewHistory() {
    return this.history;
  }
}