import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app_tharwat_samy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_tharwat_samy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';
import 'package:notes_app_tharwat_samy/views/widgets/customButton.dart';
import 'package:notes_app_tharwat_samy/views/widgets/custom_text_field.dart';

import 'colors_list_view.dart';

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

  @override
  Widget build(BuildContext context) {
    TextEditingController? titleController =
        BlocProvider.of<AddNoteCubit>(context).titleController;
    TextEditingController subTitleController =
        BlocProvider.of<AddNoteCubit>(context).subTitleController;
    bool isLoading = false;
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
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
            const ColorsListView(),
            BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                state is AddNoteLoading ? isLoading = true : isLoading = false;
              },
              builder: (context, state) {
                return CustomButton(
                  isLoading: isLoading,
                  //state is AddNoteLoading ? true : false,
                  title: 'Add',
                  onTap: () {
                    //todo
                    addNoteOnTap(context, titleController, subTitleController);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void addNoteOnTap(BuildContext context, TextEditingController titleController,
      TextEditingController subTitleController) {
    if (formKey.currentState!.validate()) {
      // formKey.currentState!.save(); //???
      var formattedDate = DateFormat.yMMMMd().add_jm().format(DateTime.now());
      BlocProvider.of<AddNoteCubit>(context).addNote(NotesModel(
        title: titleController.text,
        subtitle: subTitleController.text,
        date: formattedDate,
        color: BlocProvider.of<AddNoteCubit>(context).color!.value, //todo
      ));
      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    } else {
      autoValidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
