import 'package:flutter/material.dart';

// class MyDivider extends Divider {
//   const MyDivider({
//     super.key,
//     Color super.color = const Color.fromARGB(255, 184, 183, 183),
//     double super.thickness = 1,
//   }) : super(
//     height: 1,
//   );
// }


class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
    this.color = const Color.fromARGB(255, 184, 183, 183),
    this.thickness = 1.0,
  });

  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Divider(
        color: color,
        thickness: thickness,
        height: 1,
      ),
    );
  }
}
