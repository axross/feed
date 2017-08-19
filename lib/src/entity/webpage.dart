import 'package:meta/meta.dart';
import '../entity/uuid.dart';

class Webpage {
  final Uuid id;
  final Uri url;
  final String html;
  final String title;
  final String description;
  final String thumbnailImageUrl;
  final DateTime createdAt;
  final DateTime lastUpdatedAt;
  final DateTime deletedAt;

  Webpage({
    @required this.id,
    @required this.url,
    @required this.html,
    @required this.title,
    @required this.description,
    @required this.thumbnailImageUrl,
    @required this.createdAt,
    @required this.lastUpdatedAt,
    @required this.deletedAt,
  });
}
