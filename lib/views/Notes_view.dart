import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_icon.dart';
import 'package:notes_app_tharwat_samy/views/widgets/notes_view_body.dart';

import 'widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String routeName = 'Notes View';

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
          CustomIcon(icon: Icons.search, onPress: () {}),
        ],
      ),
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              context: context,
              builder: (context) => const AddNoteBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
