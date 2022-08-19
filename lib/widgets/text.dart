import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatefulWidget {
  final String text;
  double? size;
  final Color textColor;
  dynamic fontWeight;
  TextWidget(
      {Key? key,
      required this.text,
      this.size,
      required this.textColor,
      this.fontWeight})
      : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: widget.size,
          color: widget.textColor,
          fontWeight: widget.fontWeight),
    );
  }
}
