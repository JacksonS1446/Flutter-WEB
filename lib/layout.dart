// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, depend_on_referenced_packages, use_key_in_widget_constructors

import 'package:aplicacao_flutter_web/helpers/responsiveness.dart';
import 'package:aplicacao_flutter_web/widgets/large_screen.dart';
import 'package:aplicacao_flutter_web/widgets/side_menu.dart';
import 'package:aplicacao_flutter_web/widgets/small_screen.dart';
import 'package:aplicacao_flutter_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

import 'widgets/medium_screen.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(child: SideMenu()),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
