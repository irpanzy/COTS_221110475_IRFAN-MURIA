import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_routes.dart';
import '../../../design_system/design_system.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  bool _isRegisterPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: _isRegisterPage
            ? _buildRegisterPage()
            : Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    children: [
                      _buildOnboardingPage(
                        image: 'assets/images/onboarding1.png',
                        title: 'Selamat datang di Gojek!',
                        description:
                            'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantu semua kebutuhanmu, kapanpun, dan di manapun.',
                      ),
                      _buildOnboardingPage(
                        image: 'assets/images/onboarding2.png',
                        title: 'Transportasi & Logistik',
                        description:
                            'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
                      ),
                      _buildOnboardingPage(
                        image: 'assets/images/onboarding3.png',
                        title: 'Pesan Makan & Belanja',
                        description:
                            'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
                        isLastPage: true,
                        onButtonPressed: () {
                          Get.toNamed(AppRoutes.LOGIN);
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Image.asset(
                      'assets/images/gojek.png',
                      width: 100,
                      height: 25,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 0,
                    child: Image.asset(
                      'assets/images/language.png',
                      width: 100,
                      height: 25,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          style: AppButtonStyles.primaryButton,
                          onPressed: () {
                            Get.toNamed(AppRoutes.LOGIN);
                          },
                          child: Text('Masuk',
                              style: AppTextStyles.h4
                                  .copyWith(color: AppColors.white)),
                        ),
                        SizedBox(height: 8),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                            side: BorderSide(color: AppColors.green),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _isRegisterPage = true;
                            });
                          },
                          child: Text(
                            'Belum ada akun?, Daftar dulu',
                            style: AppTextStyles.h4
                                .copyWith(color: AppColors.green),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text.rich(
                          TextSpan(
                            text:
                                'Dengan masuk atau mendaftar, kamu menyetujui\n',
                            style: AppTextStyles.paragraph2
                                .copyWith(color: AppColors.black),
                            children: [
                              TextSpan(
                                text: 'Ketentuan Layanan',
                                style: AppTextStyles.paragraph2
                                    .copyWith(color: Color(0xFF0081A0)),
                              ),
                              TextSpan(
                                text: ' dan ',
                                style: AppTextStyles.paragraph2
                                    .copyWith(color: AppColors.black),
                              ),
                              TextSpan(
                                text: 'Kebijakan Privasi',
                                style: AppTextStyles.paragraph2
                                    .copyWith(color: Color(0xFF0081A0)),
                              ),
                              TextSpan(
                                text: '.',
                                style: AppTextStyles.paragraph2
                                    .copyWith(color: AppColors.green),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildOnboardingPage({
    required String image,
    required String title,
    required String description,
    bool isLastPage = false,
    VoidCallback? onButtonPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 250, fit: BoxFit.contain),
          SizedBox(height: 24),
          Text(
            title,
            style: AppTextStyles.h2.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            description,
            style: AppTextStyles.paragraph2.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterPage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Daftar Akun',
            style: AppTextStyles.h4.copyWith(color: AppColors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              labelText: 'Nama Lengkap',
              labelStyle:
                  AppTextStyles.paragraph1.copyWith(color: AppColors.white),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle:
                  AppTextStyles.paragraph1.copyWith(color: AppColors.white),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Kata Sandi',
              labelStyle:
                  AppTextStyles.paragraph1.copyWith(color: AppColors.white),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: AppButtonStyles.primaryButton,
            onPressed: () {
              setState(() {
                _isRegisterPage = false;
              });
            },
            child: Text('Daftar',
                style: AppTextStyles.h5.copyWith(color: AppColors.white)),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _isRegisterPage = false;
              });
            },
            child: Text('Kembali',
                style:
                    AppTextStyles.h5.copyWith(color: AppColors.primaryGreen)),
          ),
        ],
      ),
    );
  }
}
