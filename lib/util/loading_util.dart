import 'package:flutter_easyloading/flutter_easyloading.dart';
class LoadingUtil {
  static showLoading() {
    EasyLoading.show();
  }

  static hideLoading() {
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
  }

  static showSuccess(String message) {
    EasyLoading.showSuccess(message);
  }

  static showError(String message) {
    EasyLoading.showError(message);
  }
}
