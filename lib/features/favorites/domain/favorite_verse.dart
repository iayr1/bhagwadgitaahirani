class FavoriteVerse {
  final int chapterNum;
  final int verseNum;
  final Map<String, String> verse;

  const FavoriteVerse({
    required this.chapterNum,
    required this.verseNum,
    required this.verse,
  });

  String get id => '$chapterNum-$verseNum';
}
