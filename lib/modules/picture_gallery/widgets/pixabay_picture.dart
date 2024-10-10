import 'package:flutter/material.dart';
import 'package:infinite_scroll/modules/picture_gallery/models/picture_dto.dart';

class PixabayPicture extends StatelessWidget {
  final PictureDto picture;
  const PixabayPicture({super.key, required this.picture});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(picture.previewURL),
        const SizedBox(height: 8),
        Text('views ${picture.views}'),
        Text('likes ${picture.likes}'),
      ],
    );
  }
}
