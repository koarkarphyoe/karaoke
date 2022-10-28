import 'package:flutter/material.dart';
import 'package:karaoke/itemsView/vertical_scroll_view.dart';
import 'package:karaoke/resources/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(homePageTitleText),
        centerTitle: true,
      ),
      body: VerticalScrollView(),
    );
  }
}
