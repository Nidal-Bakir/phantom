import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phantom/core/util/constants.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class PlayerActionButtons extends StatelessWidget {
  final SnappingSheetController sheetController;
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
            if (sheetController.isAttached) {
              sheetController.snapToPosition(const SnappingPosition.factor(
                  positionFactor: Constants.queueOpenSnapFactor));
            }
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
