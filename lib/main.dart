import 'package:flutter/material.dart';
import 'package:iai_cc_projects/src/edima_gl3b/pages/main_page_edima.dart';
import 'package:iai_cc_projects/src/edima_gl3b/services/edima_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    EdimaService().fetchImage();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: MainPageEdima(),
    );
  }
}
