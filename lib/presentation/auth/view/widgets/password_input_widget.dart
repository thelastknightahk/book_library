import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
 
import '../../viewmodel/auth_viewmodel.dart';
 // ignore: camel_case_types, must_be_immutable
 class passwordInputWidget extends ConsumerWidget {
  TextEditingController textEditingController;
  String title;
  Function() onTap;

  passwordInputWidget({
    super.key,
    required this.textEditingController,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var globalViewModel = ref.watch(authViewModelNotifierProvider);
    return TextField(
      controller: textEditingController,
      obscureText: !globalViewModel.passwordVisible, // Inverse the visibility
      decoration: InputDecoration(
        labelText: title,
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: InkWell(
          onTap: onTap, // Call the onTap function
          child: globalViewModel.passwordVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
      ),
    );
  }
}
