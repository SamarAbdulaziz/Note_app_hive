import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app_tharwat_samy/constant.dart';
import 'package:notes_app_tharwat_samy/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NotesModel notes) {
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      noteBox.add(notes);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMsg: e.toString()));
    }
  }
}
