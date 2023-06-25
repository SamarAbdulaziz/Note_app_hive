import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/Notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
