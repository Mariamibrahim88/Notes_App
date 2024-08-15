import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {
  late int selectedIndex;

  @override
  void initState() {
    //initial color of the note will be selected to edit
    selectedIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kcolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                  onTap: () {
                    selectedIndex = index;

                    widget.note.color = kcolors[index].value;

                    setState(() {});
                  },
                  child: ColorItem(
                    isSelected: selectedIndex == index,
                    colorr: kcolors[index],
                  )),
            );
          }),
    );
  }
}
