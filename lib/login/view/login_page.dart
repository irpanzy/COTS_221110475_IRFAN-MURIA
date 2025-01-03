import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../design_system/design_system.dart'; // Replace with the actual path

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.black),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back(); // Navigasi kembali menggunakan GetX
          },
        ),
        title: Image.asset(
          'assets/images/gojek.png', // Replace with your image path
          height: 30, // Adjust height as needed
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: AppColors.black),
            onPressed: () {
              // Handle help action
            },
          ),
          const SizedBox(width: 8), // Optional spacing between the icon and the edge
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter your registered phone number to log in",
              style: AppTextStyles.paragraph2,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.mediumGrey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.flag, // You can use a general flag icon or choose a specific one if available
                        color: AppColors.black,
                        size: 20, // Adjust the icon size as needed
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        "+62",
                        style: AppTextStyles.h4,
                      ),
                      const Icon(Icons.arrow_drop_down, color: AppColors.black),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone number",
                      hintStyle: AppTextStyles.subhead2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Handle issue with number action
              },
              child: const Text(
                "Issue with number?",
                style: TextStyle(
                  color: AppColors.greenGojek,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: AppButtonStyles.primaryButton,
                onPressed: () {
                  // Navigasi ke MainPage menggunakan GetX
                  Get.toNamed(AppRoutes.MAIN);
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white, // Set the text color to white
                    fontSize: 16, // You can adjust the font size if needed
                    fontWeight: FontWeight.w600, // Adjust font weight as needed
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
