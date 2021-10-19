import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerActionButtons extends StatelessWidget {
  const PlayerActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.queue_music_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.closed_caption_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.access_time_filled_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.all_inclusive_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_rounded),
        ),
      ],
    );
  }
}
