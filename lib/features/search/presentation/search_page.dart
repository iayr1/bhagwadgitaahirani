import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = TextEditingController();
  bool _hasQuery = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0A00),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2D1200),
        title: const Text('शोधा', style: TextStyle(color: Color(0xFFFFD700), fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          TextField(
            controller: _controller,
            onChanged: (v) => setState(() => _hasQuery = v.isNotEmpty),
            style: const TextStyle(color: Color(0xFFDDC08A)),
            decoration: const InputDecoration(hintText: 'श्लोक, अध्याय, शब्द शोधा...'),
          ),
          const SizedBox(height: 16),
          if (_hasQuery)
            const Expanded(child: Center(child: Text('शोधाचे निकाल', style: TextStyle(color: Color(0xFFFFD700)))))
          else
            const Text('लोकप्रिय श्लोक: कर्मयोग, भक्ती, ज्ञान', style: TextStyle(color: Color(0xFFFFAA55))),
        ]),
      ),
    );
  }
}
