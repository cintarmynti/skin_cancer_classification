import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    final File image = Get.arguments; // menerima file dari ImageSourceView

    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Gambar')),
      body: Center(
        child: Image.file(image, fit: BoxFit.contain),
      ),
    );
  }
}
