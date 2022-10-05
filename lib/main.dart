import 'package:bukit_vista_flutter_assessment/cores/_cores.dart';
import 'package:bukit_vista_flutter_assessment/features/guest/presentation/pages/_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bukit Vista Flutter Assessment',
      theme: AppTheme.mainTheme,
      home: const GuestListPage(),
    );
  }
}
