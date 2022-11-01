import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/network/response.dart';

abstract class DataAgent {
  Future<List<ItemsVO>> getVideoList(String? searchText);
}
