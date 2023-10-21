import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/presentation/auth/infra/model/user.dart'; 
import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';
import 'core/router/app_router.dart';
import 'core/utils/colors/app_colors.dart';
import 'core/utils/db_constants/db_contants.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: AppColors.primaryColor, // navigation bar color
    statusBarColor: AppColors.primaryColor, // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.light, // color of navigation controls
  ));
  await Hive.initFlutter(); 

  Hive.registerAdapter<User>(UserAdapter()); 
  Hive.registerAdapter(FavDataAdapter());

  await Hive.openBox(DbConstants.userDB); 
  await Hive.openBox(DbConstants.favDB);
 runApp(  ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Book Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
