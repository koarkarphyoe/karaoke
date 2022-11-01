// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnails_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThumbnailsVO _$ThumbnailsVOFromJson(Map<String, dynamic> json) => ThumbnailsVO(
      normal: json['default'] == null
          ? null
          : SizedVO.fromJson(json['default'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : SizedVO.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : SizedVO.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThumbnailsVOToJson(ThumbnailsVO instance) =>
    <String, dynamic>{
      'default': instance.normal,
      'medium': instance.medium,
      'high': instance.high,
    };
