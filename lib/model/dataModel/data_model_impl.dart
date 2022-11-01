import 'package:karaoke/network/dataAgent/data_agent.dart';
import 'package:karaoke/network/dataAgent/data_agent_impl.dart';
import 'package:karaoke/model/dataModel/data_model.dart';
import 'package:karaoke/model/vo/items_vo.dart';

class DataModelImpl extends DataModel {
  DataAgent dataAgent = DataAgentImpl();

  @override
  Future<List<ItemsVO>> getVideoList(String? searchText) {
    return dataAgent.getVideoList(searchText).then((value) => value);
  }
}
