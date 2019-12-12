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
      autoPlay: true,
      showThumbnail: true,

      //Quality LOWEST, LOW, MEDIUM, HIGH, HD, FHD
      quality: YoutubeQuality.MEDIUM,

      // didapatkan dari
      // http://www.youtube.com/watch?v=KJy44mAbA4M
      source: "KJy44mAbA4M",
    );
  }
}
