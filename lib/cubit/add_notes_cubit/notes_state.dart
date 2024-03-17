part of 'notes_cubit.dart';

@immutable
sealed class NoteState {}

class NotesInitial extends NoteState {}

class AddNoteLoading extends NoteState {}

class AddNoteSuccess extends NoteState {}

class AddNoteFailure extends NoteState {
  String errMessage;
  AddNoteFailure(this.errMessage);
}
