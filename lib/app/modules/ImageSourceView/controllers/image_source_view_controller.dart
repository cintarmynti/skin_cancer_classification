import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceViewController extends GetxController {
  //TODO: Implement ImageSourceViewController
  final ImagePicker picker = ImagePicker();

  // CAMERA
  Future<void> pickFromCamera() async {
    final XFile? file = await picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      // kembalikan result ke halaman sebelumnya
      Get.back(result: file);
    }
  }

  // GALLERY
  Future<void> pickFromGallery() async {
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      // kembalikan result ke halaman sebelumnya
      Get.back(result: file);
    }
  }
}
