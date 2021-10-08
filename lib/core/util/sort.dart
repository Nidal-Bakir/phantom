enum SongSortType {
  songName,
  artistName,
  dateAdded,
}
enum SongOrderType {
  asc,
  desc,
}

class Sort {
  
  final SongSortType sortType;
  final SongOrderType orderType;

  const Sort({required this.sortType, required this.orderType});

  @override
  bool operator ==(other) {
    return identical(this, other) ||
        (other is Sort &&
            sortType == other.sortType &&
            orderType == other.orderType);
  }

  @override
  int get hashCode =>
      super.hashCode ^
      runtimeType.hashCode ^
      sortType.hashCode ^
      orderType.hashCode;
}
