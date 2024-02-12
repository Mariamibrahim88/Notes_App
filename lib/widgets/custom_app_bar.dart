import 'package:flutter/material.dart';

import 'custom_search_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(children: [
        Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ]),
    );
  }
}
