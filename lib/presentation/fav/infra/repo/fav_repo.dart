import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';

abstract class FavRepo {
  Future<void> getFavList();
   Future<void> saveFavData(FavData favData);
   Future<void> removeFavData(FavData favData);
}