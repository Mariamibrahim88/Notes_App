import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNotesFormState extends StatefulWidget {
  const AddNotesFormState({
    super.key,
  });

  @override
  State<AddNotesFormState> createState() => _AddNotesFormStateState();
}

class _AddNotesFormStateState extends State<AddNotesFormState> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            texthint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            texthint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNotesCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var note = NoteModel(
                        color: Colors.blue.value,
                        title: title!,
                        date: DateTime.now().toString(),
                        subtitle: subtitle!);

                    BlocProvider.of<AddNotesCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
