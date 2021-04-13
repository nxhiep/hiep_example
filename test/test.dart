void main() {
  DateTime currentTime = DateTime.now();

  DateTime time = DateTime(currentTime.year, currentTime.month, currentTime.day, 20, 30, 0, 0, 0);
  print("111: $time");
  int hour=3, minute=45;
  int _h = hour - time.hour;
  int _m = time.minute < minute ? minute + time.minute : 60 - time.minute + minute;
  print("_h = $_h --- _m = $_m");
  time = time.add(Duration(
    minutes: (_h < 0 ? 24 + _h : _h) * 60 + _m
  ));
  print("222: $time");
}