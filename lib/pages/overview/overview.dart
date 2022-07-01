// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:aplicacao_flutter_web/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constantes/controllers.dart';
import '../../widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  weight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
