import 'package:flutter/material.dart';

class SquareTileUI extends StatelessWidget {
  final String imagePath;

  const SquareTileUI({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200]),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
