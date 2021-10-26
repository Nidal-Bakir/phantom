import 'dart:typed_data';

import 'package:flutter/material.dart';

class CommonListTileItem extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final Uint8List? artwork;
  const CommonListTileItem({
    Key? key,
    required this.artwork,
    required this.title,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: artwork == null
            ? Container()
            : ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.memory(
                  artwork!,
                  cacheHeight: 100,
                  cacheWidth: 100,
                  gaplessPlayback: true,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) {
                      return child;
                    }
                    return AnimatedOpacity(
                      child: child,
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeOut,
                    );
                  },
                  fit: BoxFit.cover,
                ),
              ),
      ),
      title: Text(
        title,
      ),
      trailing: trailing,
      subtitle: Text(
        subtitle ?? 'Unknown',
      ),
    );
  }
}
