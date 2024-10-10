import 'package:flutter/material.dart';
import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';
import 'package:infinite_scroll/modules/picture_gallery/view_models/picture_gallery_vm.dart';
import 'package:infinite_scroll/modules/picture_gallery/widgets/pixabay_picture.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PictureGallery extends StatefulWidget {
  final PictureGalleryViewModel viewModel;

  const PictureGallery({super.key, required this.viewModel});

  @override
  State<PictureGallery> createState() => _PictureGalleryState();
}

class _PictureGalleryState extends State<PictureGallery> {
  @override
  void initState() {
    widget.viewModel.initPaginationController();
    super.initState();
  }

  @override
  void dispose() {
    widget.viewModel.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = widget.viewModel;
    return PagedGridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: viewModel
              .getColumnsNumber(MediaQuery.sizeOf(context).width)),
      pagingController: viewModel.pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) {
          return PixabayPicture(picture: item as PictureDto);
        },
      ),
    );
  }
}
