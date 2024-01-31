import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button_primary.dart';
import 'package:flutter_application_1/widgets/input_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/bgFruits.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            margin: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Daftar',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Silahkan masukan informasi anda',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 14),
                InputWidget(lable: 'Username'),
                const SizedBox(height: 12),
                InputWidget(lable: 'Email'),
                const SizedBox(height: 12),
                InputWidget(lable: 'Password'),
                const SizedBox(height: 12),
                InputWidget(lable: 'Confirm Password'),
                const Spacer(),
                ButtonPrimary(text: 'Daftar', onTap: () {}),
                const SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
