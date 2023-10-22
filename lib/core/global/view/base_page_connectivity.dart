import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';

import '../../utils/colors/app_colors.dart';
import '../services/connectivity_service.dart';

class BasePageWithConnectivity extends StatelessWidget {
  final ConnectivityService connectivityService = ConnectivityService();
  final Widget child; // The content you want to display in BasePage

  BasePageWithConnectivity({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ConnectivityResult>(
        stream: connectivityService.connectivityStream,
        initialData: ConnectivityResult.wifi, // Set an initial value
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data == ConnectivityResult.none) {
            return Center(
              child: TextStyles.inconsolataTextWidget(
                title: "No Internet",
                fontSize: 20,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w600,
              ),
            );
          }

          return Center(
            child: child,
          );
        },
      ),
    );
  }
}
