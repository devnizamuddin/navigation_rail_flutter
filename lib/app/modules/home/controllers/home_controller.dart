import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigation_rail_flutter/app/modules/exam/views/exam_view.dart';
import 'package:navigation_rail_flutter/app/modules/experiment/views/experiment_view.dart';
import 'package:navigation_rail_flutter/app/modules/test/views/test_view.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxString levelText = "Home".obs;

  //  List<Widget> _pages = [
  //     MainView(),
  //     ChatView(),
  //     ProfileView()
  //     //ProfilePage(),
  //   ];

  final List<Widget> pages = const [
    TestView(),
    ExperimentView(),
    ExamView(),
  ];

  onDestinationSelected(int value, BuildContext context) {
    selectedIndex.value = value;
    levelText.value = getTextAsIndex(value);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (_) => pages[value]),
    // );
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
