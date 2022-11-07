import 'package:flutter/material.dart';
import 'package:karaoke/model/dataModel/data_model.dart';
import 'package:karaoke/model/dataModel/data_model_impl.dart';
import 'package:karaoke/model/vo/items_vo.dart';

class HomeBloc extends ChangeNotifier {
  DataModel dataModel = DataModelImpl();

  List<ItemsVO>? videoList;

  HomeBloc() {
    dataModel.getVideoList("မလာပါနဲ့ (Karaoke Version)").then((value) {
      videoList = value;
      notifyListeners();
    });
  }
}
