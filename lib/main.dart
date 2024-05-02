import 'package:flutter/material.dart';
import 'package:peapod/bottmNavigation.dart';
import 'package:peapod/onboard_screen.dart';
import 'package:peapod/screens/home.dart';
import 'package:peapod/screens/productDetails.dart';
import 'package:peapod/screens/setpassword.dart';
import 'package:peapod/screens/login.dart';
import 'package:peapod/constants/Appcolors.dart';
import 'package:peapod/screens/signup.dart';
import 'package:peapod/screens/verifyMobile.dart';

void main() {
  runApp(const MyApp());
}

// DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        fontFamily: 'Poppins',
      ),
      home: const OnboardingScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/onboaringscreen': (context) => const OnboardingScreen(),
        '/verifymobile': (context) => const VerifyMobilePage(),
        '/setpassword': (context) => const SetPasswordPage(),
        '/home': (context) => const home(),
        '/bottomnavigation': (context) => const BottomNavigation(),
        '/productDetails': (context) => const ProductDetails(),
      },
    );
  }
}
