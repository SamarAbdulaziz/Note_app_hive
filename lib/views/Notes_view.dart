import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_saerch_icon.dart';
import 'package:notes_app_tharwat_samy/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 28.0),
        ),
        actions: [
          const CustomSearchIcon(),
        ],
      ),
      body: const NotesViewBody(),
    );
  }
}

