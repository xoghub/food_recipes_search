import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/Colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonPrimary({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: bgPrimary,
        ),
        padding: EdgeInsets.all(12),
        child: Text(
          text,
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
            backgroundColor: bgPrimary,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
