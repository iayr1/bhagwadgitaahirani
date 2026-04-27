import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0A00),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D1200),
        title: const Text('आवडते श्लोक', style: TextStyle(color: Color(0xFFFFD700), fontWeight: FontWeight.bold)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        itemBuilder: (context, index) => const ListTile(
          title: Text('कर्मण्येवाधिकारस्ते मा फलेषु कदाचन...', style: TextStyle(color: Color(0xFFFFD700))),
          subtitle: Text('तू फक्त काम कर, फळाचो विचार करू नको।', style: TextStyle(color: Color(0xFFAA8855))),
        ),
      ),
    );
  }
}
