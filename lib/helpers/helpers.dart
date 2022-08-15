class Helpers {
  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  static String toHours(int minutes) =>
      '${(minutes ~/ 60).toString().padLeft(2, '0')}h ${(minutes % 60).toString().padLeft(2, '0')}m';
}
