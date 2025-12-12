import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skin_cancer_classification/app/routes/app_pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F4F1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text("SkinSeer",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
              const SizedBox(height: 32),
              Expanded(
                child: Center(
                  child: Image.asset("assets/images/kartun1.png",
                      height: 260, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // LANGSUNG ke ImageSourceView, tidak menunggu result
                    Get.toNamed(Routes
                        .IMAGE_SOURCE_VIEW); // pakai constant dari app_routes.dart
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                  child: const Text("Scan",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
