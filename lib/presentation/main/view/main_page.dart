import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/global/view/base_page.dart';
import 'package:mvvm_book/presentation/fav/view/pages/fav_page.dart';
import 'package:mvvm_book/presentation/search/view/pages/search_page.dart';
import 'package:mvvm_book/presentation/setting/view/pages/settings_page.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../view_model/main_viewmodel.dart';

const pages = [SearchPage(), FavPage(), SettingsPage()];

class MainBodyPage extends ConsumerWidget {
  const MainBodyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.whiteColor,
        body: pages[ref.watch(mainViewModelProvider)],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: ref.watch(mainViewModelProvider),
          onTap: (index) {
            ref.read(mainViewModelProvider.notifier).update((state) => index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
