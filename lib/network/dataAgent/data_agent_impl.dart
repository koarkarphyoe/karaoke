import 'package:dio/dio.dart';
import 'package:karaoke/network/dataAgent/data_agent.dart';
import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/network/api_call.dart';
import 'package:karaoke/network/response.dart';

import '../constant.dart';

class DataAgentImpl extends DataAgent {
  static final DataAgentImpl _singleton = DataAgentImpl._internal();

  late ApiCall apiCall;

  factory DataAgentImpl() {
    return _singleton;
  }

  DataAgentImpl._internal() {
    final dio = Dio();
    apiCall = ApiCall(dio);
  }

  @override
  Future<List<ItemsVO>> getVideoList(String? searchText) {
    return apiCall
        .getVideo(apikey, "viewCount", "snippet", "20", searchText!)
        .asStream()
        .first
        .then((value) => value.items!);
  }
}
