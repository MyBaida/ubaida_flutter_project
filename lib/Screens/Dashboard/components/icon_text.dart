import 'package:flutter/material.dart';
import '../../../constants.dart';

class IconText extends StatelessWidget {
  const IconText({Key key, this.icon, this.label}) : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label.toString(),
          style: kLabelStyle,
        ),
      ],
    );
  }
}
