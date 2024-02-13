import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key});
  //  String text;
  // String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, bottom: 24),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 25),
              child: Text(
                'Build your career with tharwat samy',
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
              'May 21,2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
