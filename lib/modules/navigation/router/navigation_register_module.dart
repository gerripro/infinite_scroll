import 'package:go_router/go_router.dart';
import 'package:infinite_scroll/app/di/ioc.dart';
import 'package:infinite_scroll/modules/navigation/constants/routes.dart';
import 'package:infinite_scroll/modules/picture_gallery/clients/pictures_client.dart';
import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';
import 'package:infinite_scroll/modules/picture_gallery/view_models/picture_gallery_vm.dart';
import 'package:infinite_scroll/modules/picture_gallery/widgets/picture_view.dart';
import 'package:infinite_scroll/pages/pictureGallery/picture_gallery.dart';
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