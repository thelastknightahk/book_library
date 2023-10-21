import 'package:flutter/material.dart';

Widget userNameInputWidget({required BuildContext context, required TextEditingController textEditingController, required title}){
  return   TextField(
    controller: textEditingController,
                decoration: InputDecoration(
                  labelText: title,
                  prefixIcon: const Icon(Icons.person),
                ),
              );
}