import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNoteState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color colorr = const Color(0xffBFB1C1);

  addNote(NoteModel note) async {
    note.color = colorr.value;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      // TODO
      emit(AddNoteFailure(e.toString()));
    }
  }
}
