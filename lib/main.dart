import 'package:flutter/material.dart';
import 'package:learncode/widget/dashboard_page.dart';
import 'package:learncode/widget/doctor_profile_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DoctorProfilePage(),
    );
  }
}
