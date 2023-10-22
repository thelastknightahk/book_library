import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/utils/db_constants/db_contants.dart';
import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';
import 'package:mvvm_book/presentation/fav/infra/repo/fav_repo.dart';



final favRepoProvider = Provider<FavRepo>((ref) => FavRepoImp());
class FavRepoImp implements FavRepo {
  @override
  Future<List<FavData>> getFavList() async {
    var favBox = await Hive.openBox(DbConstants.favDB);
    List<FavData> favList = favBox.values.toList().cast<FavData>();
    return favList;
  }

  @override
  Future<void> removeFavData(int index) async {
    var favBox = await Hive.openBox(DbConstants.favDB);
     
    favBox.deleteAt(index);
    await favBox.close();
  }

  @override
  Future<void> saveFavData(FavData favData) async {
    var favBox = await Hive.openBox(DbConstants.favDB);
    await favBox.add(favData);
    await favBox.close();
  }
  
  @override
  Future<void> removeAll() async {
     
    var favBox = await Hive.openBox(DbConstants.favDB);
     
    favBox.clear();
  }
}
