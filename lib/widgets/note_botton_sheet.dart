import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';

import 'Add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child:
          BlocConsumer<AddNotesCubit, AddNoteState>(listener: (context, state) {
        if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        }
        if (state is AddNoteFailure) {
          //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      }, builder: (context, state) {
        // return ModalProgressHUD(
        //     inAsyncCall: false,
        //     //state is NoteLoading ? true : false,
        //     child:
        return AbsorbPointer(
          absorbing: state is AddNoteLoading ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 16.0,
                right: 16,
                top: 16,
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom), //height of keyboard

            child: const SingleChildScrollView(child: AddNotesFormState()),
          ),
        );
      }),
    );
  }
}
