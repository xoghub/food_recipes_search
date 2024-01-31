import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/theme/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Tambahkan logika untuk menangani delay atau pekerjaan yang dilakukan selama splash screen
    // Contoh: Future.delayed, pemrosesan data awal, atau pengecekan status otentikasi

    // Contoh menggunakan Future.delayed selama 2 detik
    Future.delayed(Duration(seconds: 2), () {
      // Pindah ke halaman berikutnya (misalnya, halaman login)
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimary,
      body: Center(
        child: SvgPicture.asset('assets/svg/Logo.svg'),
      ),
    );
  }
}
