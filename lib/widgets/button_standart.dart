import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonStandart extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonStandart({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        padding: EdgeInsets.all(12),
        child: Text(
          text,
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
