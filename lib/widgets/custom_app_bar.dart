import 'package:flutter/material.dart';

import 'custom_icon_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const Spacer(),
        CustomIconBar(
          onTap: onTap,
          icon: icon,
        ),
      ]),
    );
  }
}
