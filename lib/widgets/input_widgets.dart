import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/theme/Colors.dart';

class InputWidget extends StatelessWidget {
  final String lable;
  final TextEditingController controller;
  const InputWidget({super.key, required this.lable, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: GoogleFonts.nunito(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w500,
            color: Color(0xFF0D1220),
          ),
          maxLines: 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.3)),
            ),
            fillColor: const Color(0xFFF7F9FC),
            filled: true,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: bgPrimary)),
          ),
        )
      ],
    );
  }
}
