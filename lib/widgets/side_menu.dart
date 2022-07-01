// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, empty_statements

import 'package:aplicacao_flutter_web/helpers/responsiveness.dart';
import 'package:aplicacao_flutter_web/routing/routes.dart';
import 'package:aplicacao_flutter_web/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constantes/controllers.dart';
import '../constantes/style.dart';
import 'custom_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo2.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                      itemName: itemName == AuthenticationPageRoute
                          ? "Sair"
                          : itemName,
                      onTap: () {
                        if (itemName == AuthenticationPageRoute) {}

                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveitemTo(itemName);
                          if (ResponsiveWidget.isSmallScreen(context)) ;
                          Get.back();
                        }
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
