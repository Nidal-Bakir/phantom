import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PlayerActionButtons extends StatelessWidget {
  final SheetController sheetController;
  const PlayerActionButtons({
    Key? key,
    required this.sheetController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            sheetController.snapToExtent(0.5,
                duration: const Duration(milliseconds: 300));
          },
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
