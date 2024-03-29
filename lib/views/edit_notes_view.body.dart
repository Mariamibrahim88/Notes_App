import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                children: [
                  CustomAppBar(title: 'Edit Note', icon: Icons.done),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextField(texthint: 'title'),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(texthint: 'content', maxLines: 5),
                ],
              ))),
    );
  }
}
