 
import 'package:flutter/material.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';

import 'base_page_connectivity.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    Key? key,
    this.isLoading = false,
    required this.child,
  }) : super(key: key);

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BasePageWithConnectivity(
      child: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,
        child: child,
      ),
    );
  }
}
