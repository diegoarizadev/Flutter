import 'package:componenteflutter/src/pages/alert.dart';
import 'package:componenteflutter/src/pages/avatar.dart';
import 'package:componenteflutter/src/pages/card.dart';
import 'package:componenteflutter/src/pages/container.dart';
import 'package:componenteflutter/src/pages/home.dart';
import 'package:componenteflutter/src/pages/input.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationsRouters() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePageTmp(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvartarPage(),
    'card': (BuildContext context) => CardsPage(),
    'container': (BuildContext context) => ContainerCustom(),
    'inputs': (BuildContext context) => InputCustom()
  };
}
