import 'package:get/get.dart';
import '../controllers/image_source_controller.dart';

class ImageSourceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageSourceController());
  }
}
