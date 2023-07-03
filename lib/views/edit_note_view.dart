import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_tharwat_samy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_tharwat_samy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_icon.dart';
import 'package:notes_app_tharwat_samy/views/widgets/edit_note_view_body.dart';

import '../models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
  });

  static String routeName = 'Edit Note Page';

  @override
  Widget build(BuildContext context) {
    NotesModel note = ModalRoute.of(context)!.settings.arguments as NotesModel;
    print(note.title);
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocBuilder<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
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
                CustomIcon(
                    icon: Icons.check,
                    onPress: () {
                      if (BlocProvider.of<AddNoteCubit>(context)
                              .titleController
                              .text ==
                          '') {
                        note.title = note.title;
                      } else {
                        note.title = BlocProvider.of<AddNoteCubit>(context)
                            .titleController
                            .text;
                      }
                      if (BlocProvider.of<AddNoteCubit>(context)
                              .subTitleController
                              .text ==
                          '') {
                        note.subtitle = note.subtitle;
                      } else {
                        note.subtitle = BlocProvider.of<AddNoteCubit>(context)
                            .subTitleController
                            .text;
                      }
                      //note.save();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.pop(context);
                    }),
              ],
            ),
            body: EditNoteViewBody(note: note),
          );
        },
      ),
    );
  }
}
