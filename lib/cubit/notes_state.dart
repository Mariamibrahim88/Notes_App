part of 'notes_cubit.dart';

@immutable
sealed class NoteState {}

class NotesInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {}

class NoteFailure extends NoteState {
  String errMessage;
  NoteFailure(this.errMessage);
}
