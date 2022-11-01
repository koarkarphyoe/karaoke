import 'package:json_annotation/json_annotation.dart';
import 'package:karaoke/model/vo/id_vo.dart';
import 'package:karaoke/model/vo/snippet_vo.dart';
part 'items_vo.g.dart';

@JsonSerializable()
class ItemsVO {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "etag")
  String? etag;
  @JsonKey(name: "id")
  IdVO? id;
  @JsonKey(name: "snippet")
  SnippetVO? snippet;
  ItemsVO(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet});

  factory ItemsVO.fromJson(Map<String, dynamic> json) =>
      _$ItemsVOFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsVOToJson(this);
}
