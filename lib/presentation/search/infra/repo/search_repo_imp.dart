import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/search/infra/repo/remote_service.dart';
import 'package:mvvm_book/presentation/search/infra/repo/serach_repo.dart';

import '../model/book_data.dart';

final searchRepoProvider = Provider<SearchRepo>((ref) => SearchRepoImp());
 
class SearchRepoImp implements SearchRepo {
  final RemoteService _remoteService = RemoteService();
  @override
  Future<List<BookData>> searchBook(String query) {
   return _remoteService.fetchBooksList(query);
  }
  
}