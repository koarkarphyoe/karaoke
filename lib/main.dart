import 'package:flutter/material.dart';
import 'package:karaoke/network/dataAgent/data_agent.dart';
import 'package:karaoke/network/dataAgent/data_agent_impl.dart';
import 'package:karaoke/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  DataAgent dataAgent = DataAgentImpl();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    dataAgent.getVideoList("‌‌လေးဖြူ").then(
          (value) => print(
              "Total item is  => ${value.first.snippet?.title.toString()}"),
        );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
