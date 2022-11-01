import 'package:json_annotation/json_annotation.dart';
part 'page_info_vo.g.dart';

@JsonSerializable()
class PageInfoVO {
  @JsonKey(name: "totalResults")
  int? totalResults;
  @JsonKey(name: "resultsPerpage")
  int? resultsPerPage;

  PageInfoVO({required this.totalResults, required this.resultsPerPage});
  
  factory PageInfoVO.fromJson(Map<String, dynamic> json) =>
      _$PageInfoVOFromJson(json);
  Map<String, dynamic> toJson() => _$PageInfoVOToJson(this);
}
