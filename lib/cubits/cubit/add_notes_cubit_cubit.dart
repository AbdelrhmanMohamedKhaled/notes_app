import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  Color color = const Color(0xffAC3931);
  addNote(NoteMdel note) async {
    note.color = color.value;
    emit(AddNotesCubitLoading());
    try {
      var notesBox = Hive.box<NoteMdel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesCubitSuccess());
    } catch (e) {
      emit(AddNotesCubitFailure(e.toString()));
    }
  }
}
