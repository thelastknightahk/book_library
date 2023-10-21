import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_data.freezed.dart';
part 'book_data.g.dart';

@freezed
class BookData with _$BookData {
  factory BookData({
    required String id,
    required String title,
    required String authors,
    required String image,
    required String url,
  }) = _BookData;

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
}
