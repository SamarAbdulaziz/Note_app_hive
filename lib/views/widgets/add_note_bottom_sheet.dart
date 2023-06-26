import 'package:flutter/material.dart';
import 'package:notes_app_tharwat_samy/constant.dart';
import 'package:notes_app_tharwat_samy/views/widgets/customButton.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(hint: 'Title'),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextField(hint:'Content',maxLines: 5,),
            SizedBox(
              height: 30.0,
            ),
            CustomButton(
              title: 'Add',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

}
