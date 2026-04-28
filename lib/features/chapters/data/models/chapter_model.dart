import 'chapters/chapter_overview.dart';
import 'chapters/chapter_sample_verses.dart';

class ChapterModel {
  static const List<Map<String, String>> chapters = chapterOverview;

  static const Map<int, List<Map<String, String>>> chapterSampleVerses =
      chapterSampleVersesData;

  static List<Map<String, String>> sampleVersesForChapter(int chapterNum) {
    return chapterSampleVerses[chapterNum] ?? chapterSampleVerses[1] ?? const [];
  }

  static List<Map<String, dynamic>> allSampleVersesWithReference() {
    final results = <Map<String, dynamic>>[];
    chapterSampleVerses.forEach((chapterNum, verses) {
      for (final verse in verses) {
        final verseNum = int.tryParse(verse['num'] ?? '');
        if (verseNum == null) {
          continue;
        }
        results.add({
          'chapterNum': chapterNum,
          'verseNum': verseNum,
          'verse': verse,
        });
      }
    });
    return results;
  }

  static Map<String, dynamic> verseForDate(DateTime date) {
    final allVerses = allSampleVersesWithReference();
    if (allVerses.isEmpty) {
      return {
        'chapterNum': 1,
        'verseNum': 1,
        'verse': <String, String>{},
      };
    }

    final dateOnly = DateTime.utc(date.year, date.month, date.day);
    final seed = dateOnly.millisecondsSinceEpoch ~/ Duration.millisecondsPerDay;
    final index = seed % allVerses.length;
    return allVerses[index];
  }
}
