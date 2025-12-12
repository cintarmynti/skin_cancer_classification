import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceController extends GetxController {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) return File(image.path);
    return null;
  }

  Future<File?> pickFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) return File(image.path);
    return null;
  }
}
