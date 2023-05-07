import 'package:get/get.dart';

import '../modules/exam/bindings/exam_binding.dart';
import '../modules/exam/views/exam_view.dart';
import '../modules/experiment/bindings/experiment_binding.dart';
import '../modules/experiment/views/experiment_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/test/bindings/test_binding.dart';
import '../modules/test/views/test_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TEST,
      page: () => const TestView(),
      binding: TestBinding(),
    ),
    GetPage(
      name: _Paths.EXPERIMENT,
      page: () => const ExperimentView(),
      binding: ExperimentBinding(),
    ),
    GetPage(
      name: _Paths.EXAM,
      page: () => const ExamView(),
      binding: ExamBinding(),
    ),
  ];
}
