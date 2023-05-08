import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Obx(
          () => NavigationRail(
            labelType: NavigationRailLabelType.all,
            backgroundColor: Colors.grey[200],
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.message),
                label: Text('Chat'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Profile'),
              ),
            ],
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) =>
                controller.onDestinationSelected(value, context),
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: Center(
            child: Obx(
              () => Container(
                child: Text(
                  controller.levelText.value,
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        // Expanded(
        //   child: Navigator(
        //     onGenerateRoute: (settings) {
        //       return MaterialPageRoute(
        //         builder: (_) =>
        //             controller.pages[controller.selectedIndex.value],
        //       );
        //     },
        //   ),
        // )
      ],
    ));
  }
}
