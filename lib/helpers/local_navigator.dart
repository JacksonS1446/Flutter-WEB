// ignore_for_file: prefer_const_constructors

import 'package:aplicacao_flutter_web/routing/routes.dart';
import 'package:flutter/material.dart';

import '../constantes/controllers.dart';
import '../routing/router.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);