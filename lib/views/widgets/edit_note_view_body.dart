import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 20.0,
          ),
          CustomTextField(
            hint: ' Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
