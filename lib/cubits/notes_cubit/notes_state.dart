part of 'notes_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccess extends NotesCubitState {
  NotesSuccess({required this.notes});
  final List<NoteModel> notes;
}

final class Notesfailure extends NotesCubitState {
  Notesfailure({required this.errorMessage});
  final String errorMessage;
}
