import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/presentation/auth/view/widgets/password_input_widget.dart';
import 'package:mvvm_book/presentation/auth/view/widgets/user_name_input_widget.dart';
import 'package:mvvm_book/presentation/auth/viewmodel/auth_viewmodel.dart';

import '../../../infra/model/user.dart';

// ignore: must_be_immutable
class LoginPage extends ConsumerWidget {
  LoginPage({super.key});
  TextEditingController userNameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var globalViewModel = ref.watch(authViewModelNotifierProvider);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 100.0,
              ),
              const SizedBox(height: 20.0),
              TextStyles.normalCenterTextWidget(
                  title: 'Login to Your Account',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.greyColor),
              const SizedBox(height: 20.0),
              userNameInputWidget(
                  context: context,
                  textEditingController: userNameEditingController,
                  title: 'Username'),
              const SizedBox(height: 12.0),
              passwordInputWidget(
                  textEditingController: passwordEditingController,
                  title: "Password",
                  onTap: () {
                    ref
                        .read(authViewModelNotifierProvider.notifier)
                        .setPasswordVisible(!globalViewModel.passwordVisible);
                  }),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  final user = User()
                    ..username = userNameEditingController.text.trim()
                    ..password = passwordEditingController.text.trim()
                    ..alreadyLogined = true;
                  ref
                      .read(authViewModelNotifierProvider.notifier)
                      .saveCurrentUser(user)
                      .then((value) {
                    context.replace('/mainPage');
                  });
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 12.0),
              TextStyles.normalCenterTextWidget(
                  title: 'Register Account', color: AppColors.primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
