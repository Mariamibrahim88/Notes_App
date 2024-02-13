import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

import '../widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(children: [
        CustomAppBar(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: NotesListView())
      ]),
    );
  }
}
