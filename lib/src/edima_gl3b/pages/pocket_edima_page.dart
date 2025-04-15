import 'package:flutter/material.dart';

class PocketEdimaPage extends StatelessWidget {
  const PocketEdimaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Color.fromARGB(255, 0, 162, 255);
    return Center(
      child: Text(
        "Pocket page",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: mainColor),
      ),
    );
  }
}
