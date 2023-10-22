import 'package:flutter/material.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';

import 'dotted_line_widget.dart';

Widget dottedLine(BuildContext context) {
  return SizedBox(
    width: context.screenWidth * 0.95,
    height: 20,
    child: CustomPaint(
      painter: DottedLinePainter(),
    ),
  );
}
