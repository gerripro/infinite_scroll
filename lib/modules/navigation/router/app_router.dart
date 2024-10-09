part of "navigation_register_module.dart";

final GoRouter _router = GoRouter(
  initialLocation: RoutePath.picList,
  routes: <RouteBase>[
    GoRoute(
      path: RoutePath.picList,
      name: RouteName.picList,
      builder: (context, state) {
        return Container(color: Colors.green);
      },
    ),
  ],
);