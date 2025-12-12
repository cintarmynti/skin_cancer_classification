import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skin_cancer_classification/services/tflite_service.dart';

class ResultController extends GetxController {
  final TFLiteService _tflite = TFLiteService();

  Rx<XFile?> imageFile = Rx<XFile?>(null);
  RxString resultText = "Memproses gambar...".obs;
  RxString confidenceText = "".obs;

  // 7 kelas sesuai model HAM10000
  final List<String> classNames = [
    "akiec",
    "bcc",
    "bkl",
    "df",
    "mel",
    "nv",
    "vasc"
  ];

  @override
  void onInit() async {
    super.onInit();

    imageFile.value = Get.arguments;
    await _tflite.loadModel();

    if (imageFile.value != null) {
      await processImage(File(imageFile.value!.path));
    }
  }

  Future<void> processImage(File image) async {
    try {
      final output = await _tflite.classifyImage(image);

      // Cari index probabilitas tertinggi
      int maxIndex = 0;
      double maxProb = output[0];

      for (int i = 1; i < output.length; i++) {
        if (output[i] > maxProb) {
          maxProb = output[i];
          maxIndex = i;
        }
      }

      // Dapatkan label
      String predictedLabel = classNames[maxIndex];

      // Tentukan apakah malignant atau benign
      bool isMalignant = ["mel", "akiec", "bcc"].contains(predictedLabel);

      // Hasil utama
      resultText.value =
          isMalignant ? "Kemungkinan Kanker Kulit" : "Lesi Jinak / Non-Kanker";

      // Confidence + label kelas
      confidenceText.value =
          "Kelas: $predictedLabel\nConfidence: ${maxProb.toStringAsFixed(3)}";
    } catch (e) {
      resultText.value = "Gagal memproses gambar";
      confidenceText.value = "$e";
    }
  }
}
