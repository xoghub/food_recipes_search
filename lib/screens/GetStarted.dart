import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/theme/Colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              // title
              Text(
                'ReceiptIn',
                style: GoogleFonts.nunito(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),

              // subtitle
              Container(
                margin: EdgeInsets.only(top: 4),
                width: 400,
                child: Text(
                  'Ayo masak jangan malas sebagai kebutuhan sehari-hari kamu !',
                  style: GoogleFonts.nunito(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const Spacer(),

              // illustration
              Image.asset('assets/img/womancook.png'),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  print('click');
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: bgPrimary,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      backgroundColor: bgPrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Lanjut sebagai tamu',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
