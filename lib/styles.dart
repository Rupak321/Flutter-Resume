import 'package:flutter/material.dart';

class AppStyles {
  static final Widget profileContainer = Container(
    width: 360,
    height: 390,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://pandeyrupak.com.np/456.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}