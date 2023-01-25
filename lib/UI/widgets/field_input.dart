import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';

class FieldInput extends StatefulWidget {
  final String hint;
  final Icon icon;
  const FieldInput({Key? key,required this.hint,required this.icon}) : super(key: key);

  @override
  State<FieldInput> createState() => _FieldInputState();
}

class _FieldInputState extends State<FieldInput> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: const Color(0xffDCD6D6), width: 1),
        ),
        child:  TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: widget.icon,
              hintStyle: TextStyle(height: 1.5),
              hintText: widget.hint),
        ),

    );
  }
}
