import 'package:flutter/material.dart';

import 'custom_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustomCard(),
          );
        });
  }
}
