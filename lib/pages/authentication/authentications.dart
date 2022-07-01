// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        text: "Authentication",
        color: Colors.black,
        size: 10,
        weight: FontWeight.bold,
      ),
    );
  }
}