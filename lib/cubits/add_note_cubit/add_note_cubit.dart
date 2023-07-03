import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_tharwat_samy/constant.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  TextEditingController titleController = TextEditingController();

  TextEditingController subTitleController = TextEditingController();

  addNote(NotesModel note) {
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMsg: e.toString()));
    }
  }
}
