import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {
  CustomIconBar({super.key, required this.icon, this.onTap});

  final IconData icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
