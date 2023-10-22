import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../core/common_widgets/text_styles.dart';
import '../../../../../core/utils/colors/app_colors.dart';
import '../../../../../core/utils/toast/toasts.dart';
import '../../../infra/model/user.dart';
import '../../../viewmodel/auth_viewmodel.dart';
import '../../widgets/password_input_widget.dart';
import '../../widgets/user_name_input_widget.dart';

// ignore: must_be_immutable
class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});
  TextEditingController userNameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPwdEditingController = TextEditingController();
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
                  title: 'Register',
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
              passwordInputWidget(
                  textEditingController: confirmPwdEditingController,
                  title: "Confirm Password",
                  onTap: () {
                    ref
                        .read(authViewModelNotifierProvider.notifier)
                        .setPasswordVisible(!globalViewModel.passwordVisible);
                  }),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (userNameEditingController.text
                      .toString()
                      .trim()
                      .isEmpty) {
                    Toasts.showToast(content: 'Fill username!');
                  } else if (passwordEditingController.text
                      .toString()
                      .trim()
                      .isEmpty) {
                    Toasts.showToast(content: 'Fill  password!');
                  } else {
                    if (passwordEditingController.text.toString().trim() ==
                        confirmPwdEditingController.text.toString().trim()) {
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
                    } else {
                      Toasts.showToast(content: 'Password not same!');
                    }
                  }
                },
                child: const Text('Register'),
              ),
              const SizedBox(height: 12.0),
              InkWell(
                onTap: () {
                  context.replace('/loginPage');
                },
                child: TextStyles.normalCenterTextWidget(
                    title: 'Already have an account?Login',
                    color: AppColors.primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
