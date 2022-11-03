import 'package:flutter/material.dart';
import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/resources/dimens.dart';

class VideoItemView extends StatelessWidget {
  final ItemsVO item;
  const VideoItemView(
    this.item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image:
                NetworkImage(item.snippet!.thumbnails!.medium!.url.toString()),
          ),
          const SizedBox(
            width: marginMedium,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    item.snippet!.title.toString(),
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.fade,
                  ),
                ),
                const SizedBox(
                  height: marginSmall,
                ),
                Text(
                  item.snippet!.channelTitle.toString(),
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
