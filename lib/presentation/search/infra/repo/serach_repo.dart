import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';

abstract class SearchRepo {
  Future<List<BookData>> searchBook(String query);
}