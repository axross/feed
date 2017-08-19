import 'package:meta/meta.dart';
import '../entity/uuid.dart';

class Feed {
  final Uuid id;
  final Uri url;
  final FeedType type;
  final String title;
  final Duration refreshFrequency;
  final DateTime lastRefreshedAt;
  final DateTime createdAt;
  final DateTime lastUpdatedAt;
  final DateTime invalidatedAt;
  final DateTime deletedAt;

  Feed({
    @required this.id,
    @required this.url,
    @required this.type,
    @required this.title,
    @required this.refreshFrequency,
    @required this.lastRefreshedAt,
    @required this.createdAt,
    @required this.lastUpdatedAt,
    @required this.invalidatedAt,
    @required this.deletedAt,
  });
}

abstract class FeedType {
  static final RSS20 = new _FeedType('RSS2.0');
}

class _FeedType implements FeedType {
  final String _type;

  operator ==(_FeedType other) => other._type == _type;

  _FeedType(this._type);
}