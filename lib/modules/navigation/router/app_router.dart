part of "navigation_register_module.dart";

final GoRouter _router = GoRouter(
  initialLocation: RoutePath.picGallery,
  routes: <RouteBase>[
    GoRoute(
      path: RoutePath.picGallery,
      name: RouteName.picGallery,
      builder: (context, state) {
        return PictureGalleryPage(
          viewModel: PictureGalleryViewModel(client: ioc<PicturesClient>()),
        );
      },
    ),
  ],
);