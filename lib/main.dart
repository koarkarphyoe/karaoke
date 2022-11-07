import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karaoke/network/dataAgent/data_agent.dart';
import 'package:karaoke/network/dataAgent/data_agent_impl.dart';
import 'package:karaoke/pages/home_page.dart';
import 'package:karaoke/pages/player_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
