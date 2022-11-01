// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsVO _$ItemsVOFromJson(Map<String, dynamic> json) => ItemsVO(
      kind: json['kind'] as String?,
      etag: json['etag'] as String?,
      id: json['id'] == null
          ? null
          : IdVO.fromJson(json['id'] as Map<String, dynamic>),
      snippet: json['snippet'] == null
          ? null
          : SnippetVO.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemsVOToJson(ItemsVO instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };
