import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/config/routes.dart';
import 'core/config/theme.dart';
import 'features/splash/presentation/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const BhagwadGitaApp());
}

class BhagwadGitaApp extends StatelessWidget {
  const BhagwadGitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'भगवद्गीता - अहिराणी',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routes: AppRoutes.routes,
      home: const SplashScreen(),
    );
  }
}
