import 'package:aplicacao_flutter_web/helpers/local_navigator.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.white)),
        Expanded(
          flex: 5,
          child: localNavigator(),
        ),
      ],
    );
  }
}
