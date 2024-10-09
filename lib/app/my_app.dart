import 'package:flutter/material.dart';
import 'package:infinite_scroll/modules/navigation/router/navigation_register_module.dart';

class MyApp extends StatelessWidget {
  final MyAppRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router.router,
    );
  }
}
