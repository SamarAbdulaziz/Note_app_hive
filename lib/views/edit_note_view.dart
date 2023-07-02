import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_icon.dart';
import 'package:notes_app_tharwat_samy/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  static String routeName = 'Edit Note Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Edit Note',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        actions: [
          const CustomIcon(icon: Icons.check),
        ],
      ),
      body:  const EditNoteViewBody(),
    );
  }
}
