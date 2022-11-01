import 'package:karaoke/model/vo/items_vo.dart';

abstract class DataModel {
  Future<List<ItemsVO>> getVideoList(String? searchText);
}
