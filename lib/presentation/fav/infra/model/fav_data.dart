import 'package:hive/hive.dart';

part 'fav_data.g.dart';

@HiveType(typeId: 2)
class FavData {
  @HiveField(0)
  String bookID;

  @HiveField(1)
  String bookTitle;

  @HiveField(2)
  String bookAuthors;

  @HiveField(3)
  String bookImage;
  FavData({
    required this.bookID,
    required this.bookTitle,
    required this.bookAuthors,
    required this.bookImage,
  });
}
