String formatDuration(Duration? duration) {
  if (duration == null) return '0:00';
  final durationWithoutMillSec = duration.toString().split('.').first;
  if (duration.inHours >= 1) {
    return durationWithoutMillSec;
  } else {
    final splitterDuration = durationWithoutMillSec.split(':');
    final min = splitterDuration[1].replaceFirst('0', '');
    final sec = splitterDuration[2];
    return '$min:$sec';
  }
}
