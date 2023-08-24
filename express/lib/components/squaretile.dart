import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String image;
  const SquareTile({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadiusDirectional.circular(16),
          border: Border.all(color: Colors.white)),
      child: Image.asset(
        image,
        height: 40,
      ),
    );
  }
}
