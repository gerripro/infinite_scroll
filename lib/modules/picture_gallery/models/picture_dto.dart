import 'package:json_annotation/json_annotation.dart';

part 'picture_dto.g.dart';

@JsonSerializable()
class PictureDto {
  final String previewURL;
  final int views;
  final int likes;

  PictureDto({required this.previewURL, required this.views, required this.likes});

  Map<String, dynamic> toJson() => _$PictureDtoToJson(this);

  factory PictureDto.fromJson(Map<String, dynamic> json) =>
      _$PictureDtoFromJson(json);
}