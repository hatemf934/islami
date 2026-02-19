int getInitialPage(Map<String, dynamic> timings, List<String> prayNames) {
  DateTime now = DateTime.now();
  int currentMinutes = now.hour * 60 + now.minute;

  for (int i = 0; i < prayNames.length; i++) {
    String prayTime = timings[prayNames[i]];

    List<String> parts = prayTime.split(':');
    int prayMinutes = int.parse(parts[0]) * 60 + int.parse(parts[1]);

    if (prayMinutes > currentMinutes) {
      return i;
    }
  }
  return 0;
}

String getRemainingTime(Map<String, dynamic> timings, List<String> prayNames) {
  final now = DateTime.now().toLocal();
  int nextIndex = prayNames.indexWhere((name) {
    final timeParts = timings[name].split(':');
    final prayTime = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(timeParts[0]),
      int.parse(timeParts[1]),
    );
    return prayTime.isAfter(now);
  });

  DateTime nextPrayDateTime;
  if (nextIndex == -1) {
    final timeParts = timings[prayNames[0]].split(':');
    nextPrayDateTime = DateTime(
      now.year,
      now.month,
      now.day + 1,
      int.parse(timeParts[0]),
      int.parse(timeParts[1]),
    );
  } else {
    final timeParts = timings[prayNames[nextIndex]].split(':');
    nextPrayDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(timeParts[0]),
      int.parse(timeParts[1]),
    );
  }

  Duration diff = nextPrayDateTime.difference(now);

  String hours = diff.inHours.toString().padLeft(2, '0');
  String minutes = (diff.inMinutes % 60).toString().padLeft(2, '0');

  return "$hours:$minutes";
}
