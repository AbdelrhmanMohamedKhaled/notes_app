import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  addNote(NoteMdel note) async {
    emit(AddNotesCubitLoading());
    try {
      var notesBox = Hive.box<NoteMdel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesCubitSuccess());
    } catch (e) {
      AddNotesCubitFailure(e.toString());
    }
  }
}
