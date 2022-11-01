import 'package:flutter/material.dart';
import 'package:karaoke/resources/dimens.dart';

class VerticalScrollView extends StatelessWidget {
  
  const VerticalScrollView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(marginMedium),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: ((context, index) => Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: VideoItemView(),
          )),
    );
  }
}

class VideoItemView extends StatelessWidget {
  const VideoItemView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                "https://th.bing.com/th/id/OIP.8t1WtYLAPVB189hu7pCP3gHaHa?pid=ImgDet&rs=1"),
          ),
          SizedBox(
            width: marginMedium,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Title"),
              SizedBox(
                height: marginMedium,
              ),
              Text("Description")
            ],
          )
        ],
      ),
    );
  }
}
