import 'package:flutter/material.dart';
import 'package:karaoke/model/vo/items_vo.dart';
import 'package:karaoke/resources/dimens.dart';

class VideoItemView extends StatelessWidget {
  final ItemsVO item;
  final Function(String?, String?) onTapVideo;
  const VideoItemView(
    this.item, {
    required this.onTapVideo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: InkWell(
        onTap: () {
          onTapVideo(
              item.id?.videoId.toString(), item.snippet?.title.toString());
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 120,
              width: 120,
              image: NetworkImage(
                  item.snippet!.thumbnails!.medium!.url.toString()),
              fit: BoxFit.cover,
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
      ),
    );
  }
}
