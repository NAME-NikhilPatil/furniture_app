import 'package:flutter/material.dart';

import '../size_config.dart';


class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);
 final String title;

  @override
  Widget build(BuildContext context) {
    double? defaultsize=SizeConfig.defaultSize;

    return Text(
      title,
      style: TextStyle(fontSize: defaultsize!*1.6, fontWeight: FontWeight.bold),
    );
  }
}