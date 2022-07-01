// ignore_for_file: empty_statements, curly_braces_in_flow_control_structures

import 'package:aplicacao_flutter_web/widgets/horizontal_menu_item.dart';
import 'package:aplicacao_flutter_web/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

import '../helpers/responsiveness.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );

    return HorizontalMenuItem(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
