import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;

  fetchAllNotes() {
    //emit(NoteLoading());
    //try {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    notes = noteBox.values.toList();
    //emit(NoteSuccess(notes));
    // } catch (e) {
    //   // TODO
    //   emit(NoteFailure(e.toString()));
    // }
  }

  // deleteNote() {
  //   var noteBox = Hive.box<NoteModel>(kNotesBox);
  //   noteBox.delete(key);
  // }
}
