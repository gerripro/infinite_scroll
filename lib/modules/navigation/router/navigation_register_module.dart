import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll/modules/navigation/constants/routes.dart';
import 'package:injectable/injectable.dart';

part "app_router.dart";

class MyAppRouter {
  final GoRouter router;
  const MyAppRouter({required this.router});
}

@module
abstract class AppRouterRegistrationModule {
  @lazySingleton
  MyAppRouter get appRouter => MyAppRouter(router: _router);
}