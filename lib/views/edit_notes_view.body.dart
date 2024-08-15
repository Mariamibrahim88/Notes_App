import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_color_of_note.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  CustomAppBar(
                    title: 'Edit Note',
                    icon: Icons.done,
                    onTap: () {
                      widget.note.title = title ?? widget.note.title;
                      widget.note.subtitle = content ?? widget.note.subtitle;
                      widget.note.save();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                      onChanged: (value) {
                        title = value;
                      },
                      texthint: 'title'),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    texthint: 'content',
                    maxLines: 5,
                    onChanged: (value) {
                      content = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  EditNotesColorList(note: widget.note)
                ],
              ))),
    );
  }
}
