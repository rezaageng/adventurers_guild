enum ECategories {
  mountains,
  islands,
  undergrounds,
  forests,
  cliffs,
}

enum ERegions {
  mondstadt,
  liyue,
  inazuma,
}

class DestinasionsModel {
  final String id;
  final String title;
  final ECategories category;
  final ERegions region;
  final String description;
  final DateTime duration;
  final String imageUrl;

  DestinasionsModel({
    required this.id,
    required this.title,
    required this.category,
    required this.region,
    required this.description,
    required this.duration,
    required this.imageUrl,
  });
}
