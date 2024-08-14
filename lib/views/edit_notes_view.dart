import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'edit_notes_view.body.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return EditNotesViewBody(
      note: note,
    );
  }
}
