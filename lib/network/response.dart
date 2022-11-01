
import 'package:json_annotation/json_annotation.dart';
import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/model/vo/page_info_vo.dart';
part 'response.g.dart';

@JsonSerializable()
class Response {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "etag")
  String? etag;
  @JsonKey(name: "nextPageToken")
  String? nextPageToken;
  @JsonKey(name: "regionCode")
  String? regionCode;
  @JsonKey(name: "pageInfo")
  PageInfoVO? pageInfo;
  @JsonKey(name: "items")
  List<ItemsVO>? items;
  Response(
      {required this.kind,
      required this.etag,
      required this.nextPageToken,
      required this.regionCode,
      required this.pageInfo,
      required this.items});

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
