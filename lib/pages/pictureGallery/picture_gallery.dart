import 'package:flutter/material.dart';
import 'package:infinite_scroll/modules/picture_gallery/view_models/picture_gallery_vm.dart';
import 'package:infinite_scroll/modules/picture_gallery/widgets/picture_gallery.dart';

class PictureGalleryPage extends StatelessWidget {
  final PictureGalleryViewModel viewModel;

  const PictureGalleryPage({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PictureGallery(viewModel: viewModel),
    );
  }
}
