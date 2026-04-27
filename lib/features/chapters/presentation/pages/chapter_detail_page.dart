import 'package:flutter/material.dart';

import '../../../verse/presentation/pages/verse_detail_page.dart';
import '../../../verse/presentation/widgets/verse_card.dart';
import '../../data/models/chapter_model.dart';

class ChapterDetailPage extends StatelessWidget {
  final int chapterNum;
  final Map<String, String> chapter;
  final Color color;

  const ChapterDetailPage({super.key, required this.chapterNum, required this.chapter, required this.color});

  @override
  Widget build(BuildContext context) {
    final verses = ChapterModel.sampleVersesForChapter(chapterNum);

    return Scaffold(
      backgroundColor: const Color(0xFF1A0A00),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 180,
          pinned: true,
          backgroundColor: const Color(0xFF2D1200),
          leading: IconButton(icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFFFD700)), onPressed: () => Navigator.pop(context)),
          actions: [
            IconButton(icon: const Icon(Icons.bookmark_border, color: Color(0xFFFFD700)), onPressed: () {}),
            IconButton(icon: const Icon(Icons.share_outlined, color: Color(0xFFFFD700)), onPressed: () {}),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [color.withOpacity(0.4), const Color(0xFF1A0A00)]),
              ),
              child: Center(child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text('अध्याय ${chapter['num']}', style: TextStyle(color: color, fontSize: 16, letterSpacing: 2)),
                  const SizedBox(height: 6),
                  Text(chapter['title']!, style: const TextStyle(color: Color(0xFFFFD700), fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                  const SizedBox(height: 4),
                  Text(chapter['ahirani']!, style: TextStyle(color: color.withOpacity(0.9), fontSize: 15, fontStyle: FontStyle.italic)),
                ]),
              )),
            ),
          ),
        ),
        SliverToBoxAdapter(child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: color.withOpacity(0.1), border: Border.all(color: color.withOpacity(0.3))),
            child: Text(chapter['summary']!, style: const TextStyle(color: Color(0xFFDDC08A), fontSize: 14, height: 1.6), textAlign: TextAlign.center),
          ),
        )),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => VerseCard(
                verse: verses[index],
                color: color,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => VerseDetailPage(
                    verse: verses[index],
                    chapterNum: chapterNum,
                    verseNum: index + 1,
                    color: color,
                  )));
                },
              ),
              childCount: verses.length,
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
      ]),
    );
  }
}
