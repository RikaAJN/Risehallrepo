import 'package:risehallrepo/theme/config.dart' as config;
import 'package:risehallrepo/ui/pages/live_session/tabs.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../util/scaler/src/margin.dart';

class LiveSessionVideo extends StatefulWidget {
  const LiveSessionVideo({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);
  final Function? onMenuTap;

  @override
  State<LiveSessionVideo> createState() => _LiveSessionVideoState();
}

class _LiveSessionVideoState extends State<LiveSessionVideo>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late YoutubePlayerController _controller;
  @override
  void initState() {
    String url = "https://www.youtube.com/watch?v=VOSomhXeH6A";

    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url) ??
          YoutubePlayer.convertUrlToId(' ') ??
          '',
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        captionLanguage: 'en',
        isLive: false,
        hideThumbnail: false,
        disableDragSeek: false,
        controlsVisibleAtStart: true,
        enableCaption: true,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: _controller),
      builder: (p0, p1) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Live sessions',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          elevation: 0.00,
          centerTitle: false,
          backgroundColor: config.Colors().secondColor(1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //   fit: BoxFit.fitWidth,
                  //   image: NetworkImage(widget.videoImage),
                  // ),
                ),
                child: p1,
              ),
              // YMargin(20),
              Expanded(
                child: TabView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
