import 'package:flutter/material.dart';
import 'package:phantom/core/player/model/playing_song.dart';

class PlayerSongInfoWithOptions extends StatelessWidget {
  final PlayingSong playingSong;
  const PlayerSongInfoWithOptions({Key? key, required this.playingSong})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
        ),
        Column(
          children: [
            Hero(
              tag: playingSong.song.title,
              child: Text(playingSong.song.title),
            ),
            Text(playingSong.song.artist ?? 'Unknown'),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_rounded),
        ),
      ],
    );
  }
}
