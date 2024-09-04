class Utils {
  static String createStartAndFinishDateWeek() {
    DateTime dateNow = DateTime.now();
    DateTime dateAfterSevenDays = dateNow.add(Duration(days: 7));
    return "${dateFormat(dateNow)} - ${dateFormat(dateAfterSevenDays)}";
  }

  static Map<String, DateTime> getStartAndFinishDateWeek() {
    DateTime dateNow = DateTime.now();
    DateTime dateAfterSevenDays = dateNow.add(Duration(days: 7));
    return {'start': dateNow, 'end': dateAfterSevenDays};
  }

  static String dateFormat(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year % 2000}";
  }

  static String getWeekDay(int weekDayNumber) {
    print(weekDayNumber);
    List<String> weekDays = ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"];

    return weekDays[(weekDayNumber - 1) % 7];
  }
}
