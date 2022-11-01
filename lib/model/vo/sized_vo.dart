import 'package:json_annotation/json_annotation.dart';

part 'sized_vo.g.dart';

@JsonSerializable()
class SizedVO {
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;

  SizedVO({required this.url, required this.width, required this.height});
  
  factory SizedVO.fromJson(Map<String, dynamic> json) =>
      _$SizedVOFromJson(json);
  Map<String, dynamic> toJson() => _$SizedVOToJson(this);
}
