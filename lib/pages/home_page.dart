import 'package:flutter/material.dart';
import 'package:karaoke/bloc/home_bloc.dart';
import 'package:karaoke/itemsView/vertical_scroll_view.dart';
import 'package:karaoke/pages/player_page.dart';
import 'package:karaoke/resources/strings.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: HomeBloc(),
        child: Scaffold(
          drawer: Drawer(
            child: ListTile(
              title: Text(
                "Hello",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          appBar: AppBar(
            elevation: 0,
            title: const Text(homePageTitleText),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
          body: Consumer<HomeBloc>(
            builder: (BuildContext context, homeBloc, Widget? child) {
              return (homeBloc.videoList != null)
                  // ? VerticalScrollView(homeBloc.videoList!, (videoId) {
                  //     print("OnTapVideoId is => $videoId");
                  //   })
                  ? VerticalScrollView(homeBloc.videoList!,
                      onTapVideo: (videoId, videoTitle) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PlayerPage(
                                    videoID: videoId,
                                    videoTitle: videoTitle,
                                  ))));
                    })
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ));
  }
}
