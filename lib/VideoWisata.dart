import 'package:flutter/cupertino.dart';
import 'package:youtube_player/youtube_player.dart';

class VideoWisata extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _VideoWisata();
  }
}

class _VideoWisata extends State<VideoWisata> {
  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      context: context,
      quality: YoutubeQuality.MEDIUM,
      source: "KJy44mAbA4M",
    );
  }
}
