import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/image_source_view_controller.dart';

class ImageSourceViewView extends GetView<ImageSourceViewController> {
  const ImageSourceViewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Sumber Gambar'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // BUTTON CAMERA
            ElevatedButton.icon(
              onPressed: controller.pickFromCamera,
              icon: const Icon(Icons.camera_alt),
              label: const Text("Scan Menggunakan Camera"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),

            const SizedBox(height: 20),

            // BUTTON GALLERY
            OutlinedButton.icon(
              onPressed: controller.pickFromGallery,
              icon: const Icon(Icons.photo_library),
              label: const Text("Pilih Dari Galeri"),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
