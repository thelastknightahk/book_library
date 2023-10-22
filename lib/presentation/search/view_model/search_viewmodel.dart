import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/search/infra/model/search_state.dart';
import 'package:mvvm_book/presentation/search/infra/repo/search_repo_imp.dart';
import 'package:mvvm_book/presentation/search/infra/repo/serach_repo.dart';


final searchViewModelNotifierProvider =
    StateNotifierProvider<SearchViewModel, SearchState>(
        (ref) => SearchViewModel(ref.read(searchRepoProvider)));

class SearchViewModel extends StateNotifier<SearchState> {
  final SearchRepo _repo;
  SearchViewModel(this._repo): super(SearchState());


  Future<void> searchBooks(String query) async{
   final result = await _repo.searchBook(query);
   state =  state.copyWith(searchBookList: result);
  }

  Future<void> clearBookList() async{ 
   state =  state.copyWith(searchBookList: []);
  }

  
}