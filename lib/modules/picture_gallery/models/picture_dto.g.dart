// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PictureDto _$PictureDtoFromJson(Map<String, dynamic> json) => PictureDto(
      largeImageURL: json['largeImageURL'] as String,
      previewURL: json['previewURL'] as String,
      views: (json['views'] as num).toInt(),
      likes: (json['likes'] as num).toInt(),
    );

Map<String, dynamic> _$PictureDtoToJson(PictureDto instance) =>
    <String, dynamic>{
      'previewURL': instance.previewURL,
      'largeImageURL': instance.largeImageURL,
      'views': instance.views,
      'likes': instance.likes,
    };
