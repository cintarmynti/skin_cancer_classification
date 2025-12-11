import 'package:get/get.dart';

import '../controllers/image_source_view_controller.dart';

class ImageSourceViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageSourceViewController>(
      () => ImageSourceViewController(),
    );
  }
}
