// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snippet_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SnippetVO _$SnippetVOFromJson(Map<String, dynamic> json) => SnippetVO(
      publishTime: json['publishTime'] as String?,
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      channelTitle: json['channelTitle'] as String?,
      liveBroadcastContent: json['liveBroadcastContent'] as String?,
      publishedAt: json['publishedAt'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : ThumbnailsVO.fromJson(json['thumbnails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SnippetVOToJson(SnippetVO instance) => <String, dynamic>{
      'publishedAt': instance.publishedAt,
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'publishTime': instance.publishTime,
    };
