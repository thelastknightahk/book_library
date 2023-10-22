import 'package:dio/dio.dart';
import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';

import '../../../../core/utils/api/api_constant.dart';

class RemoteService {
  final Dio dio = Dio();
  Future<List<BookData>> fetchBooksList(String query) async {
    List<BookData> bookList = [];
    final response = await dio
        .get('${ApiConstant.bookdbBaseUrl}${ApiConstant.boookSearch}/$query');
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data['books'];
      bookList = data.map((item) => BookData.fromJson(item)).toList();
    }
    return bookList;
  }
}
