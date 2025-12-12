import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skin_cancer_classification/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Starter',
      initialRoute: AppPages.INITIAL, // <- gunakan initial route
      getPages: AppPages.routes, // <- daftar semua route GetX
    );
  }
}
