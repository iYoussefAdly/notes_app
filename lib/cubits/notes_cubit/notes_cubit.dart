import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList().cast<NoteModel>();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(Notesfailure(errorMessage: 'failed'));
    }
  }
}
