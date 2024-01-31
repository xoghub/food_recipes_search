import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_application_1/theme/colors.dart'; // Corrected import statement
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Added WidgetsFlutterBinding.ensureInitialized()
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Corrected key declaration

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReceiptIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "nunito",
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue), // Updated seedColor to primarySwatch
        scaffoldBackgroundColor: Colors.grey[200],
        useMaterial3: true,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
