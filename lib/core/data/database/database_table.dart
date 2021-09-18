abstract class SongTable {
  // song table columns names
  static const tableName = 'song';
  static const id = '_id';
  static const title = 'title';
  static const displayName = '_display_name';
  static const albumId = 'album_id';
  static const album = 'album';
  static const artist = 'artist';
  static const artistId = 'artist_id';
  static const displayNameWithOutExtension = '_display_name_wo_ext';
  static const composer = 'composer';
  static const data = '_data';
  static const uri = '_uri';
  static const size = '_size';
  static const bookmark = 'bookmark';
  static const dateAdded = 'date_added';
  static const dateModified = 'date_modified';
  static const fileExtension = 'file_extension';
  static const songArtwork = 'song_artwork';
  static const favorite = 'favorite';

  static const tableCreation = '''CREATE TABLE ${SongTable.tableName} (
        ${SongTable.id} INTEGER PRIMARY KEY,
        ${SongTable.title} TEXT NOT NULL,
        ${SongTable.displayName} TEXT NOT NULL,
        ${SongTable.displayNameWithOutExtension} TEXT NOT NULL,
        ${SongTable.albumId} INTEGER,
        ${SongTable.album} TEXT,
        ${SongTable.artist} TEXT,
        ${SongTable.artistId} INTEGER,
        ${SongTable.composer} TEXT,
        ${SongTable.data} TEXT NOT NULL UNIQUE,
        ${SongTable.uri} TEXT,
        ${SongTable.size} INTEGER NOT NULL,
        ${SongTable.bookmark} INTEGER,
        ${SongTable.dateAdded} INTEGER NOT NULL,
        ${SongTable.dateModified} INTEGER NOT NULL,
        ${SongTable.fileExtension} TEXT NOT NULL,
        ${SongTable.songArtwork} BLOB
        ${SongTable.favorite} INTEGER
             )''';
}
