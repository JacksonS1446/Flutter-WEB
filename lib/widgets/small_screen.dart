// ignore_for_file: prefer_const_constructors

import 'package:aplicacao_flutter_web/helpers/local_navigator.dart';
import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return localNavigator();
  }
}
