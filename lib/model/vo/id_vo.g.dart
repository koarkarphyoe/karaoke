// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IdVO _$IdVOFromJson(Map<String, dynamic> json) => IdVO(
      kind: json['kind'] as String?,
      videoId: json['videoId'] as String?,
      playlistId: json['palylistId'] as String?,
    );

Map<String, dynamic> _$IdVOToJson(IdVO instance) => <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
      'palylistId': instance.playlistId,
    };
