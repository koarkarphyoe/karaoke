import 'package:json_annotation/json_annotation.dart';
part 'id_vo.g.dart';

@JsonSerializable()
class IdVO {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "videoId")
  String? videoId;
  @JsonKey(name: "palylistId")
  String? playlistId;
  IdVO({required this.kind, required this.videoId, required this.playlistId});

  factory IdVO.fromJson(Map<String, dynamic> json) => _$IdVOFromJson(json);
  Map<String, dynamic> toJson() => _$IdVOToJson(this);
}
