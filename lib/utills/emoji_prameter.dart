import 'package:flutter/material.dart';

class EmojiFace extends StatelessWidget {
  final String emojiFace;
  final String text;
  const EmojiFace({
    super.key,
    required this.emojiFace,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(13),
          ),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  emojiFace,
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
