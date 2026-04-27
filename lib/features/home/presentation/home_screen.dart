import 'package:flutter/material.dart';

import '../../chapters/presentation/pages/chapters_page.dart';
import '../../daily_verse/presentation/daily_verse_page.dart';
import '../../favorites/presentation/favorites_page.dart';
import '../../search/presentation/search_page.dart';
import 'widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    ChaptersPage(),
    DailyVersePage(),
    FavoritesPage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0A00),
      body: _pages[_selectedIndex],
      bottomNavigationBar: HomeBottomNav(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
      ),
    );
  }
}
