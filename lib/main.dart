import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/router/app_router.dart';
import 'core/utils/colors/app_colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: AppColors.primaryColor, // navigation bar color
    statusBarColor: AppColors.primaryColor, // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.light, // color of navigation controls
  ));
  runApp(MyApp());
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
