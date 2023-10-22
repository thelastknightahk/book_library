import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/auth/viewmodel/auth_viewmodel.dart';
import 'package:mvvm_book/presentation/setting/view/widgets/setting_item_widget.dart';

import '../../../../core/common_widgets/text_styles.dart';
import '../../../../core/utils/colors/app_colors.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryColor,
              width: context.screenWidth,
              height: context.screenHeight * 0.05,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.normalTextWidget(
                        title: 'Settings',
                        fontSize: 18,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            settingItemWidget(
                context: context,
                onTap: () {},
                title: 'Delete Account',
                iconData: Icons.delete),
            settingItemWidget(
                context: context,
                onTap: () {
                  ref
                      .read(authViewModelNotifierProvider.notifier)
                      .getCurrentUser();
                  var userData =
                      ref.watch(authViewModelNotifierProvider).currentUserData;
                  print("Data ${userData!.username}");
                },
                title: 'Logout',
                iconData: Icons.logout)
          ],
        ),
      ),
    );
  }
}
