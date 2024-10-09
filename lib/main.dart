import 'package:flutter/material.dart';
import 'package:infinite_scroll/app/di/ioc.dart';
import 'package:infinite_scroll/app/my_app.dart';
import 'package:infinite_scroll/modules/navigation/router/navigation_register_module.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(MyApp(router: ioc<MyAppRouter>()));
}
