import 'dart:convert';

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

   

  FavData copyWith({
    String? bookID,
    String? bookTitle,
    String? bookAuthors,
    String? bookImage,
  }) {
    return FavData(
      bookID: bookID ?? this.bookID,
      bookTitle: bookTitle ?? this.bookTitle,
      bookAuthors: bookAuthors ?? this.bookAuthors,
      bookImage: bookImage ?? this.bookImage,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'bookID': bookID});
    result.addAll({'bookTitle': bookTitle});
    result.addAll({'bookAuthors': bookAuthors});
    result.addAll({'bookImage': bookImage});

    return result;
  }

  factory FavData.fromMap(Map<String, dynamic> map) {
    return FavData(
      bookID: map['bookID'] ?? '',
      bookTitle: map['bookTitle'] ?? '',
      bookAuthors: map['bookAuthors'] ?? '',
      bookImage: map['bookImage'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FavData.fromJson(String source) =>
      FavData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FavData(bookID: $bookID, bookTitle: $bookTitle, bookAuthors: $bookAuthors, bookImage: $bookImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FavData &&
        other.bookID == bookID &&
        other.bookTitle == bookTitle &&
        other.bookAuthors == bookAuthors &&
        other.bookImage == bookImage;
  }

  @override
  int get hashCode {
    return bookID.hashCode ^
        bookTitle.hashCode ^
        bookAuthors.hashCode ^
        bookImage.hashCode;
  }
}
