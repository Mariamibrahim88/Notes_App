import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    //emit(NoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccess(notes));
    } catch (e) {
      // TODO
      emit(NoteFailure(e.toString()));
    }
  }
}
