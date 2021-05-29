import 'package:componenteflutter/src/pages/alert.dart';
import 'package:componenteflutter/src/pages/avatar.dart';
import 'package:componenteflutter/src/pages/home.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationsRouters() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePageTmp(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvartarPage()
  };
}
