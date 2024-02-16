import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

import '../widgets/custom_icon_bar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              children: [CustomAppBar(title: 'Edit Note', icon: Icons.done)],
            )),
      ),
    );
  }
}
