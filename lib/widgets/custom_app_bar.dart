import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),

       Spacer(),

        CustomSearchIcon(),
      ],
    );
  }
}


