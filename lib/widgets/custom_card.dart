import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

import '../views/edit_notes_view.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.noteModel});
  //  String text;
  // String color;

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotes();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, left: 24, bottom: 24),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 25),
                child: Text(
                  noteModel.subtitle,
                  //softWrap: true,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                noteModel.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
