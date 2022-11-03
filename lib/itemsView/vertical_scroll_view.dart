import 'package:flutter/material.dart';
import 'package:karaoke/itemsView/video_item_view.dart';
import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/resources/dimens.dart';

class VerticalScrollView extends StatelessWidget {
  final List<ItemsVO> itemList;
  const VerticalScrollView(this.itemList,{
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(marginMedium),
      scrollDirection: Axis.vertical,
      itemCount: itemList.length,
      itemBuilder: ((context, index) =>  SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: VideoItemView(itemList[index]),
          )),
    );
  }
}
