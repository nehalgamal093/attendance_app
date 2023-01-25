import 'package:attendance_app/UI/resources/assets_manager.dart';
import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:attendance_app/UI/resources/strings_manager.dart';
import 'package:flutter/material.dart';

TopBar() {
  return AppBar(
    title: Text(StringsManager.profile),
    actions: [Image.asset(AssetsManager.logo), SizedBox(width: 30)],
    elevation: 0,
    backgroundColor: ColorManager.primaryClr,
  );
}
