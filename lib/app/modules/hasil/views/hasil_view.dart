import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/hasil_controller.dart';

class HasilView extends GetView<HasilController> {
  const HasilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F4F1),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),

              // BACK BUTTON
              Row(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Icon(Icons.arrow_back_ios_new, size: 16),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // DATE
              const Center(
                child: Text(
                  "22 Maret 2025",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),

              const SizedBox(height: 10),

              // TITLE
              const Center(
                child: Text(
                  "Hasil Prediksi",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 20),

              // PERSENTASE
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "80% Melanoma",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/hasil.png",
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // DESCRIPTION
              Text(
                "Melanoma adalah kanker kulit ganas yang berasal dari sel melanosit penghasil pigmen, ditandai dengan pertumbuhan abnormal yang berpotensi menyebar cepat ke organ lain jika tidak dideteksi dan ditangani sejak dini.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87.withOpacity(0.8),
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 16),

              // SUMBER SECTION
              const Text(
                "Sumber:",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),

              const SizedBox(height: 10),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  SourceChip(text: "American Cancer Society"),
                  SourceChip(text: "Melanoma Research Foundation"),
                ],
              ),

              const SizedBox(height: 28),

              // REKOMENDASI TITLE
              const Text(
                "Rekomendasi",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),

              const SizedBox(height: 12),

              Text(
                "Penanganan melanoma dilakukan dengan operasi pengangkatan lesi, dilanjutkan imunoterapi atau terapi target bila menyebar, serta pemeriksaan rutin untuk mencegah kekambuhan.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87.withOpacity(0.8),
                  height: 1.45,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Sumber:",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),

              const SizedBox(height: 10),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  SourceChip(text: "American Cancer Society"),
                  SourceChip(text: "Melanoma Research Foundation"),
                ],
              ),

              const SizedBox(height: 26),

              // BUTTON SCAN LAGI
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    "Scan lagi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

/// CHIP WIDGET
class SourceChip extends StatelessWidget {
  final String text;
  const SourceChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black38),
      ),
      child: Text(text, style: const TextStyle(fontSize: 13)),
    );
  }
}
