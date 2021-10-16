import 'dart:typed_data';

import 'package:flutter/material.dart';

class CommonListTileItem extends StatefulWidget {
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
  State<CommonListTileItem> createState() => _CommonListTileItemState();
}

class _CommonListTileItemState extends State<CommonListTileItem>
    with SingleTickerProviderStateMixin {
  late final _opacityController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..forward();

  late final Animation<double> _opacity =
      Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    parent: _opacityController,
    curve: Curves.ease,
  ));

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 1.0,
        child: widget.artwork == null
            ? Container()
            : ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.memory(
                  widget.artwork!,
                  cacheHeight: 200,
                  cacheWidth: 200,
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
                  opacity: _opacity,
                ),
              ),
      ),
      title: Text(
        widget.title,
      ),
      trailing: widget.trailing,
      subtitle: Text(
        widget.subtitle ?? 'Unknown',
      ),
    );
  }
}
