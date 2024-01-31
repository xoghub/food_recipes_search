import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/theme/Colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReceiptIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "nunito",
        colorScheme: ColorScheme.fromSeed(seedColor: bgPrimary),
        scaffoldBackgroundColor: Colors.grey[300],
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: FutureBuilder(
//         future: checkUserLoggedInStatus(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return SplashScreen();
//           } else {
//             if (snapshot.data == true) {
//               return HomeScreen();
//             } else {
//               return LoginScreen();
//             }
//           }
//         },
//       ),
//     );
//   }

//   Future<bool> checkUserLoggedInStatus() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//     return isLoggedIn;
//   }
// }
