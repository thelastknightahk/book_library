import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';
import 'package:mvvm_book/presentation/fav/infra/model/fav_state.dart';
import 'package:mvvm_book/presentation/fav/infra/repo/fav_repo.dart';
import 'package:mvvm_book/presentation/fav/infra/repo/fav_repo_imp.dart';

final favViewModelNotifierProvider =
    StateNotifierProvider<FavViewModel, FavState>(
        (ref) => FavViewModel(ref.read(favRepoProvider)));

class FavViewModel extends StateNotifier<FavState> {
  final FavRepo _repo;
  FavViewModel(this._repo) : super(FavState());

  Future<void> saveFavData(FavData favData) async {
    _repo.saveFavData(favData);
    state = state.copyWith(FavList: [...?state.FavList, favData]);
  }

  Future<void> getFavList() async {
    List<FavData> favList = await _repo.getFavList();
    state = state.copyWith(FavList: favList);
  }

  Future<void> removeFavData(FavData favData) async {
    List<FavData> favList = state.FavList!;
    List<FavData> favUpdList = [];
    favUpdList.addAll(favList);
    for (int i = 0; i < favList.length; i++) {
      if (favList[i].bookID == favData.bookID) {
        favUpdList.removeAt(i);
        await _repo.removeFavData(i);
      }
    }
    state = state.copyWith(FavList: favUpdList);
  }

  Future<void> removeAll() async {
    await _repo.removeAll();
    state = state.copyWith(FavList: []);
  }
}
