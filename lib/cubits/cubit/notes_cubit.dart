// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteMdel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteMdel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
