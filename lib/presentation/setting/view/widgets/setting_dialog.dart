
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: must_be_immutable
class SettingDialog extends ConsumerWidget {
    String? title;
    String? content;
    Function()? onTap;
    SettingDialog({super.key, required this.title, required this.content, required this.onTap });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoAlertDialog(
      title:   Text(title!),
      content:   Text(content!),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed:  onTap,
          child: const Text("Confirm"),
        ),
      ],
    );
  }
}
