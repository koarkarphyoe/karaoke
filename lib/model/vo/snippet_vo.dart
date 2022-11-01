import 'package:json_annotation/json_annotation.dart';
import 'package:karaoke/model/vo/thumbnails_vo.dart';
part 'snippet_vo.g.dart';

@JsonSerializable()
class SnippetVO {
  @JsonKey(name: "publishedAt")
  String? publishedAt;
  @JsonKey(name: "channelId")
  String? channelId;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "thumbnails")
  ThumbnailsVO? thumbnails;
  @JsonKey(name: "channelTitle")
  String? channelTitle;
  @JsonKey(name: "liveBroadcastContent")
  String? liveBroadcastContent;
  @JsonKey(name: "publishTime")
  String? publishTime;

  SnippetVO(
      {required this.publishTime,
      required this.channelId,
      required this.title,
      required this.description,
      required this.channelTitle,
      required this.liveBroadcastContent,
      required this.publishedAt,
      required this.thumbnails});

  factory SnippetVO.fromJson(Map<String, dynamic> json) =>
      _$SnippetVOFromJson(json);
  Map<String, dynamic> toJson() => _$SnippetVOToJson(this);
}
