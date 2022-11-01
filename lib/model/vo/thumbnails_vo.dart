import 'package:json_annotation/json_annotation.dart';
import 'package:karaoke/model/vo/sized_vo.dart';
part 'thumbnails_vo.g.dart';

@JsonSerializable()
class ThumbnailsVO {
  @JsonKey(name: "default")
  SizedVO? normal;
  @JsonKey(name: "medium")
  SizedVO? medium;
  @JsonKey(name: "high")
  SizedVO? high;

  ThumbnailsVO(
      {required this.normal, required this.medium, required this.high});
  factory ThumbnailsVO.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsVOFromJson(json);
  Map<String, dynamic> toJson() => _$ThumbnailsVOToJson(this);
}
