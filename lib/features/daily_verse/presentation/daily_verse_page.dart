import 'package:flutter/material.dart';

class DailyVersePage extends StatelessWidget {
  const DailyVersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0A00),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D1200),
        title: const Text('आजचो श्लोक', style: TextStyle(color: Color(0xFFFFD700), fontWeight: FontWeight.bold)),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text('कर्मण्येवाधिकारस्ते मा फलेषु कदाचन।', style: TextStyle(color: Color(0xFFFFD700), fontSize: 20), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
