import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerPage extends StatefulWidget {
  final String? videoID;
  final String? videoTitle;
  const PlayerPage(
      {required this.videoID, required this.videoTitle, super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: widget.videoID.toString(),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Flexible(
              child: Text(
            widget.videoTitle.toString(),
            textDirection: TextDirection.rtl,
          )),
        ),
        body: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.red,
          showVideoProgressIndicator: true,
        ));
  }
}
