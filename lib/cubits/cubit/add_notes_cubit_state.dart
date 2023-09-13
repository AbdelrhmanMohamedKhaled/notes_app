part of 'add_notes_cubit_cubit.dart';

@immutable
sealed class AddNotesCubitState {}

final class AddNotesCubitInitial extends AddNotesCubitState {}

final class AddNotesCubitLoading extends AddNotesCubitState {}

final class AddNotesCubitSuccess extends AddNotesCubitState {}

final class AddNotesCubitFailure extends AddNotesCubitState {
  final String errMessage;

  AddNotesCubitFailure(this.errMessage);
}
