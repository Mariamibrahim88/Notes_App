import 'package:flutter/material.dart';

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

  List<Color> colors = const [
    Color(0xffBFB1C1),
    Color(0xff385F71),
    Color(0xff06D6A0),
    Color(0xffD7B377),
    Color(0xffEF476F),
    Color(0xffB5BEC6),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                  onTap: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    isSelected: selectedIndex == index,
                    colorr: colors[index],
                  )),
            );
          }),
    );
  }
}
