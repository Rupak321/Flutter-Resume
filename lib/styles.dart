import 'package:flutter/material.dart';

class AppStyles {
  static final Widget profileContainer = ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Container(
      width: 360,
      height: 300,
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: Colors.blue,
            width: 4,
          ),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/img1.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
