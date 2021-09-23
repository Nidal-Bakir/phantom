import 'package:flutter/material.dart';
import 'package:phantom/core/models/song/song.dart';

class SongItem extends StatefulWidget {
  final Song song;
  const SongItem({Key? key, required this.song}) : super(key: key);

  @override
  State<SongItem> createState() => _SongItemState();
}

class _SongItemState extends State<SongItem>
    with SingleTickerProviderStateMixin {
  late final Song _song = widget.song;
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
        child: widget.song.songArtwork == null
            ? Container()
            : ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.memory(
                  widget.song.songArtwork!,
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
        widget.song.title,
      ),
      subtitle: Text(
        widget.song.artist ?? 'Unknown artist',
      ),
      trailing: IconButton(
        icon: Icon(
          _song.favorite ? Icons.favorite_outlined : Icons.favorite_outlined,
        ),
        onPressed: () {},
      ),
    );
  }
}
