import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll/modules/navigation/constants/routes.dart';
import 'package:infinite_scroll/modules/picture_gallery/clients/pictures_client.dart';
import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';
import 'package:infinite_scroll/modules/picture_gallery/widgets/picture_view.dart';
import 'package:infinite_scroll/shared/utils/logger/debug_logger.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mobx/mobx.dart';

part 'picture_gallery_vm.g.dart';

class PictureGalleryViewModel = _PictureGalleryViewModel
    with _$PictureGalleryViewModel;

abstract class _PictureGalleryViewModel with Store {
  final PicturesClient client;
  final GoRouter router;

  _PictureGalleryViewModel({required this.client, required this.router});

  final PagingController<int, PictureDto> pagingController =
      PagingController(firstPageKey: 1);
  final int _pageSize = 20;

  void initPaginationController() {
    pagingController.addPageRequestListener(
      (pageKey) {
        getPaginatedPictureList(pageKey);
      },
    );
  }

  void disposeController() {
    pagingController.dispose();
  }

  Future<void> getPaginatedPictureList(int page) async {
    try {
      var updatedPicList =
          await client.getPaginatedPicList(page: page, size: _pageSize);
      final isLastPage = updatedPicList.isEmpty;
      if (isLastPage) {
        pagingController.appendLastPage(updatedPicList);
      } else {
        final nextPageKey = page + 1;
        pagingController.appendPage(updatedPicList, nextPageKey);
      }
    } catch (e) {
      debugLogger.e('error $e');
      pagingController.error = e;
      if (e is DioException) {
        debugLogger.e('statusCode ${e.response?.statusCode}');
        debugLogger.e('message ${e.response?.data}');
        pagingController.error = e.response?.data;
        // handle invalid range
        if (e.response?.statusCode == 400 &&
            e.response != null &&
            e.response!.data.toString().contains("valid range")) {
          pagingController.appendLastPage([]);
        }
      }
      rethrow;
    }
  }

  int getColumnsNumber(double currentWidth) {
    return (currentWidth ~/ 250).toInt();
  }

  // TODO: refactor to use GoRouter
  // the state of the picture gallery page view model
  // has been recreated on router.pushNamed (unexpected behavior)
  void handlePicTap(PictureDto picture) {
    Navigator.of(router.configuration.navigatorKey.currentContext!)
        .push(MaterialPageRoute(
      builder: (context) {
        return PictureView(picture: picture);
      },
    ));
  }
}
