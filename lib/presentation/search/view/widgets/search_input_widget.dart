import 'package:flutter/material.dart';

Widget searchInputWidget(
    {required BuildContext context,
    required TextEditingController textEditingController,
    required title,
    required Function() searchFunction}) {
  return TextField(
    controller: textEditingController,
    decoration: InputDecoration(
      labelText: title,
      suffixIcon:
          InkWell(onTap: searchFunction, child: const Icon(Icons.search)),
    ),
  );
}
