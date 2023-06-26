import 'package:flutter/material.dart';
import '../../../constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({this.colour, this.cardChild, this.onTouch, Key key})
      : super(key: key);

  final Color colour;
  final Widget cardChild;
  final void Function() onTouch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20),
        ),
        child: cardChild,
      ),
    );
  }
}
