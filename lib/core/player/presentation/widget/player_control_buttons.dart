import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';

class PlayerControlButtons extends StatefulWidget {
  final PlayingSong playingSong;
  const PlayerControlButtons({Key? key, required this.playingSong})
      : super(key: key);

  @override
  _PlayerControlButtonsState createState() => _PlayerControlButtonsState();
}

class _PlayerControlButtonsState extends State<PlayerControlButtons> {
  double? _songPosition;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.playingSong.song.title),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.loop)),
            StreamBuilder<Duration>(
              stream: widget.playingSong.position,
              initialData: Duration.zero,
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  return Slider(
                      value: _songPosition ??
                          snapshot.data!.inMilliseconds.toDouble(),
                      min: 0.0,
                      max: widget.playingSong.song.songDuration?.toDouble() ??
                          55 * 60 * 1000.0,
                      onChangeEnd: (value) {
                        context.read<PlayerBloc>().add(PlayerSongSought(
                            Duration(milliseconds: value.ceil())));
                        _songPosition = null;
                      },
                      onChangeStart: (value) {
                        _songPosition = value;
                      },
                      onChanged: (value) {
                        _songPosition = value;
                      });
                }
                return Container();
              },
            ),
            Text(
              (widget.playingSong.song.songDuration?.toDouble() ??
                      55 * 60 * 1000.0)
                  .toString(),
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  context
                      .read<PlayerBloc>()
                      .add(const PlayerPerviousSongPlayed());
                },
                child: const Text('rev')),
            ElevatedButton(
                onPressed: () {
                  if (widget.playingSong.playerState.playing) {
                    context.read<PlayerBloc>().add(const PlayerPaused());
                  } else {
                    context.read<PlayerBloc>().add(const PlayerResumed());
                  }
                },
                child: Text(
                    widget.playingSong.playerState.playing ? 'stop' : 'play')),
            ElevatedButton(
                onPressed: () {
                  context.read<PlayerBloc>().add(const PlayerNextSongPlayed());
                },
                child: const Text('next')),
          ],
        ),
      ],
    );
  }
}
