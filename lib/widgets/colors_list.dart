import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.colorr});

  final bool isSelected;
  final Color colorr;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: colorr,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: colorr,
          );
  }
}

// because i will use variable i will use stateful widget

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedIndex = 0;

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
                    BlocProvider.of<AddNotesCubit>(context).colorr =
                        kcolors[index];

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
