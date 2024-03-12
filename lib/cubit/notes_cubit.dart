import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel note) async {
    emit(NoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(NoteSuccess());
      await noteBox.add(note);
    } catch (e) {
      // TODO
      emit(NoteFailure(e.toString()));
    }
  }
}
