import 'package:app_store/src/config/custom_color.dart';
import 'package:app_store/src/pages/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColor.customSwatchColor,
        scaffoldBackgroundColor: Colors.lightGreen.shade50,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}