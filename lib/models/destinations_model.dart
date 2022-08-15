enum ECategories {
  mountains,
  islands,
  undergrounds,
  forests,
  cliffs,
  mines,
  ruins,
}

enum ERegions {
  mondstadt,
  liyue,
  inazuma,
}

class DestinationsModel {
  final String id;
  final String title;
  final ECategories category;
  final ERegions region;
  final String description;
  final int duration;
  final String imageUrl;

  const DestinationsModel({
    required this.id,
    required this.title,
    required this.category,
    required this.region,
    required this.description,
    required this.duration,
    required this.imageUrl,
  });
}
