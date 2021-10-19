import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phantom/core/player/model/playing_song.dart';
import 'package:phantom/core/player/presentation/bloc/player_bloc/player_bloc.dart';
import 'package:phantom/core/util/global_functions.dart';

class PlayerSongSliderAndDuration extends StatefulWidget {
  final PlayingSong playingSong;
  const PlayerSongSliderAndDuration({Key? key, required this.playingSong})
      : super(key: key);

  @override
  State<PlayerSongSliderAndDuration> createState() =>
      _PlayerSongSliderAndDurationState();
}

class _PlayerSongSliderAndDurationState
    extends State<PlayerSongSliderAndDuration> {
  double? _songPosition;
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.center,
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 2,
          child: StreamBuilder<Duration>(
            initialData: Duration.zero,
            stream: widget.playingSong.position,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return Text(formatDuration(snapshot.data));
              }
              return const Text('--:--');
            },
          ),
        ),
        Flexible(
          flex: 10,
          child: StreamBuilder<Duration>(
            stream: widget.playingSong.position,
            initialData: Duration.zero,
            builder: (context, snapshot) {
              if (snapshot.hasData && snapshot.data != null) {
                return Slider(
                    value: _songPosition ??
                        snapshot.data!.inMilliseconds.toDouble(),
                    min: 0.0,
                    max: widget.playingSong.songDuration?.inMilliseconds
                            .toDouble() ??
                        double.infinity,
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
        ),
        Flexible(
            flex: 2,
            child: Text(formatDuration(widget.playingSong.songDuration)))
      ],
    );
  }
}
