import 'package:fluttertoast/fluttertoast.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';

class Toasts {
    static showToast({required String? content}) {
    Fluttertoast.showToast(
      msg: content!,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.primaryColor,
    );
  }
  
}