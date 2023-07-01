import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_tharwat_samy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/widgets/customButton.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextFormField(
              hint: 'Title',
              controller: titleController,
            ),
            const SizedBox(
              height: 16.0,
            ),
            CustomTextFormField(
              hint: 'Content',
              maxLines: 5,
              controller: subTitleController,
            ),
            const SizedBox(
              height: 30.0,
            ),
            CustomButton(
              title: 'Add',
              onTap: () {
                //todo
                if (formKey.currentState!.validate()) {
                  // formKey.currentState!.save(); //???
                  BlocProvider.of<AddNoteCubit>(context).addNote(NotesModel(
                      title: titleController.text,
                      subtitle: subTitleController.text,
                      date: DateTime.now().toString(),//todo
                      color: Colors.pink.value,//todo
                  ));
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
