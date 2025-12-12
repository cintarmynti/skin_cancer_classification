import 'dart:io';
import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

class TFLiteService {
  late Interpreter _interpreter;

  // Ukuran input model (harus sesuai training)
  static const int inputSize = 32;

  Future<void> loadModel() async {
    _interpreter = await Interpreter.fromAsset('models/skin_cancer_cnn.tflite');
    print("Model TFLite berhasil dimuat");
  }

  Future<List<double>> classifyImage(File imageFile) async {
    // 1. LOAD IMAGE
    Uint8List bytes = await imageFile.readAsBytes();
    img.Image? rawImage = img.decodeImage(bytes);
    if (rawImage == null) throw Exception("Gambar tidak bisa diproses");

    // 2. RESIZE KE 32x32
    img.Image resized = img.copyResize(
      rawImage,
      width: inputSize,
      height: inputSize,
    );

    // 3. Siapkan input shape (1, 32, 32, 3)
    List<List<List<List<double>>>> input = [
      List.generate(
        inputSize,
        (y) => List.generate(
          inputSize,
          (x) {
            final pixel = resized.getPixel(x, y);
            return [
              pixel.r / 255.0,
              pixel.g / 255.0,
              pixel.b / 255.0,
            ].map((e) => e.toDouble()).toList();
          },
        ),
      )
    ];

    // 4. Output (1, 2)
    List<List<double>> output = [
      List.filled(2, 0.0),
    ];

    // 5. RUN MODEL
    _interpreter.run(input, output);

    return output[0];
  }
}
