import 'package:get/get.dart';
import 'package:skin_cancer_classification/app/modules/result/bindings/result_binding.dart';
import 'package:skin_cancer_classification/app/modules/result/views/result_view.dart';

import '../modules/ImageSource/bindings/image_source_binding.dart';
import '../modules/ImageSource/views/image_source_view.dart';
import '../modules/hasil/bindings/hasil_binding.dart';
import '../modules/hasil/views/hasil_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

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
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_SOURCE_VIEW,
      page: () => const ImageSourceView(),
      binding: ImageSourceBinding(),
    ),
  ];
}
