import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';

class PictureView extends StatelessWidget {
  final PictureDto picture;
  const PictureView({super.key, required this.picture});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Image.network(picture.largeImageURL)),
    );
  }
}
