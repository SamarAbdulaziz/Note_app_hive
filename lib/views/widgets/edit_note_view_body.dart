import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
   EditNoteViewBody({
    super.key,
  });

  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFormField(
            hint: 'Title',
            controller: titleController,
          ),
          SizedBox(
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
