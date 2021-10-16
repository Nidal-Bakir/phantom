import 'dart:convert';

import 'package:phantom/core/models/currently_playing_song/currently_playing_song.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CurrentlyPlayingSongDataSource {
  Future<void> setCurrentlyPlayingSong(
      CurrentlyPlayingSong currentlyPlayingSong);
  Future<CurrentlyPlayingSong?> getCurrentlyPlayingSong();
}

class CurrentlyPlayingSongDataSourceImpl
    extends CurrentlyPlayingSongDataSource {
  static const _key = 'CurrentlyPlayingSong';
  SharedPreferences? _sharedPreferences;
  Future<SharedPreferences> _openShared() async {
    if (_sharedPreferences != null) return _sharedPreferences!;
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences!;
  }

  @override
  Future<CurrentlyPlayingSong?> getCurrentlyPlayingSong() async {
    final shard = await _openShared();
    var cps = shard.getString(_key);
    if (cps == null) {
      return null;
    }
    return CurrentlyPlayingSong.fromJson(jsonDecode(cps));
  }

  @override
  Future<void> setCurrentlyPlayingSong(
      CurrentlyPlayingSong currentlyPlayingSong) async {
    final shard = await _openShared();
    await shard.setString(_key, jsonEncode(currentlyPlayingSong.toJson()));
  }
}
