part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteModel> notes;

  NoteSuccess(this.notes);
}

// class NoteFailure extends NotesState {
//   String errMessage;
//   NoteFailure(this.errMessage);
// }
