import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_tharwat_samy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NotesModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? titleController =
        BlocProvider.of<AddNoteCubit>(context).titleController;

    TextEditingController subTitleController =
        BlocProvider.of<AddNoteCubit>(context).subTitleController;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFormField(
            initialValue: widget.note.title,
            hint: 'Title',
            controller: titleController,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextFormField(
            initialValue: widget.note.subtitle,
            hint: 'Content',
            maxLines: 5,
            controller: subTitleController,
          ),
        ],
      ),
    );
  }
}
