import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(
            texthint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            texthint: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
