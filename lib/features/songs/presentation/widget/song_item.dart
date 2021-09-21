import 'package:flutter/material.dart';
import 'package:phantom/core/models/song/song.dart';

class SongItem extends StatelessWidget {
  final Song song;
  const SongItem({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(song.title));
  }
}
