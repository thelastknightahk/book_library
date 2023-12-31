import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';

abstract class FavRepo {
  Future<List<FavData>> getFavList();
   Future<void> saveFavData(FavData favData);
  Future<void> removeFavData(int index);
  Future<void> removeAll();
}