class TimeModel {
  final String day;
  final String dateHijri;
  final String dateGregorian;

  TimeModel({
    required this.day,
    required this.dateHijri,
    required this.dateGregorian,
  });
  factory TimeModel.fromjson(Map<String, dynamic> json) {
    return TimeModel(
      day: json["date"]['gregorian']['weekday']['en'],
      dateHijri: json["date"]['hijri']["date"],
      dateGregorian: json["date"]['gregorian']["date"],
    );
  }
}

class TimingModel {
  final Map<String, dynamic> timing;

  TimingModel({required this.timing});

  factory TimingModel.fromjson(Map<String, dynamic> json) {
    return TimingModel(timing: json);
  }
}
