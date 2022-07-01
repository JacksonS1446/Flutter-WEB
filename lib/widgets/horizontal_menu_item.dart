// ignore_for_file: sort_child_properties_last, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:aplicacao_flutter_web/constantes/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../constantes/controllers.dart';
import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("Not hovering");
      },
      child: Obx(() => Container(
          color: menuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                child: Container(
                  width: 6,
                  height: 40,
                  color: dark,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(width: _width / 80),
              Padding(
                padding: EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: menuController.isHovering(itemName) ? dark : lightGrey,
                  size: 20,
                  weight: FontWeight.bold,
                ))
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: dark,
                  size: 18,
                  weight: FontWeight.bold,
                ))
            ],
          ))),
    );
  }
}
