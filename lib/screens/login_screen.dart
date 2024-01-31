import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button_primary.dart';
import 'package:flutter_application_1/widgets/input_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
            padding: EdgeInsets.all(24),
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Masuk',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Masuk untuk melanjutkan',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                InputWidget(
                  lable: 'Email',
                  controller: _emailController,
                ),
                const SizedBox(height: 12),
                InputWidget(
                  lable: 'Password',
                  controller: _passwordController,
                ),
                const Spacer(),
                ButtonPrimary(
                    text: 'Masuk',
                    onTap: () async {
                      // try {
                      //   UserCredential userCredential =
                      //       await _auth.signInWithEmailAndPassword(
                      //     email: _emailController.text,
                      //     password: _passwordController.text,
                      //   );
                      //   // If login is successful
                      // } catch (e) {
                      //   // Handle login errors here
                      //   print("Error during login: $e");
                      // }
                      Navigator.pushReplacementNamed(context, '/home');
                    }),
                const SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: 'Tidak punya akun? ',
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Daftar',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           child: Image.asset(
//             'img/bgFruits.png',
//             width: double.infinity,
//           ),
//         ),
//         Container(
//           width: double.infinity,
//           height: double.infinity,
//           margin: EdgeInsets.only(top: 100),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30.0),
//               topRight: Radius.circular(30.0),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }