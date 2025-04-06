import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(128, 128, 128, 0.06),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Center(
        child: Icon(Icons.search_rounded,
        size: 28,
        ),
      ),
    );
  }
}
