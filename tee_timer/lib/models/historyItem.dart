class HistoryItem {
  DateTime timestamp;
  String teaType;

  HistoryItem(String teaType) {
    this.timestamp = DateTime.now();
    this.teaType = teaType;
  }
}