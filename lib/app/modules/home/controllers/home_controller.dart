import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxString levelText = "Home".obs;

  onDestinationSelected(int value) {
    selectedIndex.value = value;
    levelText.value = getTextAsIndex(value);
  }

  String getTextAsIndex(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return 'Chat';
      case 2:
        return 'Profile';
      default:
        return "Home";
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
