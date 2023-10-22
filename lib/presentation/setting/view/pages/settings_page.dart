import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'; 
import 'package:mvvm_book/presentation/auth/infra/model/user.dart';
import 'package:mvvm_book/presentation/auth/viewmodel/auth_viewmodel.dart';
import 'package:mvvm_book/presentation/fav/view_model/fav_view_model.dart';
import 'package:mvvm_book/presentation/setting/view/widgets/setting_dialog.dart';
import 'package:mvvm_book/presentation/setting/view/widgets/setting_item_widget.dart';
import 'package:mvvm_book/presentation/setting/view/widgets/setting_nav_bar.dart';
 

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           settingNavBar(context),
            const SizedBox(
              height: 20,
            ),
            settingItemWidget(
                context: context,
                onTap: () {
                  Future.delayed(const Duration(milliseconds: 100), () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return SettingDialog(
                            title: 'Delete',
                            content: "Sure to delete account?",
                            onTap: () {
                              Future.wait([
                                ref
                                    .read(favViewModelNotifierProvider.notifier)
                                    .removeAll(),
                                ref
                                    .read(
                                        authViewModelNotifierProvider.notifier)
                                    .clearCurrentUser()
                                    .then((value) {
                                  context.replace("/loginPage");
                                  Navigator.pop(context);
                                })
                              ]);
                            });
                      },
                    );
                  });
                },
                title: 'Delete Account',
                iconData: Icons.delete),
            settingItemWidget(
                context: context,
                onTap: () {
                  Future.delayed(const Duration(milliseconds: 100), () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return SettingDialog(
                            title: 'Logout',
                            content: "Sure to logout account?",
                            onTap: () {
                              Future.wait([
                              
                                Future.delayed(
                                    const Duration(milliseconds: 500), () {
                                  ref
                                      .read(authViewModelNotifierProvider
                                          .notifier)
                                      .getCurrentUser();
                                  var userData = ref
                                      .watch(authViewModelNotifierProvider)
                                      .currentUserData;
                                     
                                  ref
                                      .read(authViewModelNotifierProvider
                                          .notifier)
                                      .saveCurrentUser(User(
                                          alreadyLogined: false,
                                          password: userData!.password,
                                          username: userData.username));
                                  context.replace("/loginPage");
                                   Navigator.pop(context);
                                })
                              ]);
                            });
                      },
                    );
                  });
                },
                title: 'Logout',
                iconData: Icons.logout)
          ],
        ),
      ),
    );
  }
}
