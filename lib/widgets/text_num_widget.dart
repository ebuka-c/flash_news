import 'package:flutter/material.dart';

class TextNumWidget extends StatelessWidget {
  final String text;
  final String number;

  const TextNumWidget({Key? key, required this.text, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            fontSize: h * 0.024,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: h * 0.019,
            // fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
