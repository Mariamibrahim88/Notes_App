import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NotesInitial());
}
