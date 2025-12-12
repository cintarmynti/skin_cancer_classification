import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skin_cancer_classification/app/routes/app_pages.dart';
import '../controllers/image_source_controller.dart';

class ImageSourceView extends GetView<ImageSourceController> {
  const ImageSourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pilih Sumber Gambar')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  final File? image = await controller.pickFromCamera();
                  if (image != null) {
                    // LANGSUNG ke ResultView, tanpa Get.back()
                    Get.toNamed(Routes.RESULT, arguments: image);
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text("📷 Camera"),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async {
                  final File? image = await controller.pickFromGallery();
                  if (image != null) {
                    Get.toNamed(Routes.RESULT, arguments: image);
                  }
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text("🖼️ Gallery"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
