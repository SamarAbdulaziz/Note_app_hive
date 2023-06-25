import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/CustomItem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index)=>CustomNoteItem(),);
  }
}
