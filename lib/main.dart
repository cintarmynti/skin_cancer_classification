import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skin_cancer_classification/app/modules/home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Starter',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
