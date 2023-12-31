import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key key, @required this.icon, @required this.onTouch})
      : super(key: key);

  final IconData icon;
  final void Function() onTouch;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTouch,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
