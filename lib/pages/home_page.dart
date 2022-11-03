import 'package:flutter/material.dart';
import 'package:karaoke/bloc/home_bloc.dart';
import 'package:karaoke/itemsView/vertical_scroll_view.dart';
import 'package:karaoke/resources/strings.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: HomeBloc(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text(homePageTitleText),
            centerTitle: true,
          ),
          body: Consumer<HomeBloc>(
            builder: (BuildContext context, homeBloc, Widget? child) {
              return (homeBloc.videoList != null)
                  ? VerticalScrollView(homeBloc.videoList!)
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ));
  }
}
