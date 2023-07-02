import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController subTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFormField(
            hint: 'Title',
            controller: titleController,
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextFormField(
            hint: ' Content',
            maxLines: 5,
            controller: subTitleController,
          ),
        ],
      ),
    );
  }
}
