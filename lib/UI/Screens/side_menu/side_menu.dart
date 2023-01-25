import 'package:attendance_app/UI/resources/assets_manager.dart';
import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:attendance_app/UI/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu_tile.dart';

class SideMenu extends StatefulWidget {

  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
     return Drawer(
      backgroundColor: ColorManager.primaryClr,
      child: ListView(
        children: [
          DrawerHeader(

            margin :const EdgeInsets.only(top:50,bottom: 50.0),
            child: Image.asset(AssetsManager.logo),),
          MenuTile(title:StringsManager.profile),

          MenuTile(title: StringsManager.attendance,),
          MenuTile(title: StringsManager.deductions),
          MenuTile(title: StringsManager.messages),
          MenuTile(title: StringsManager.companyPolicy),
          MenuTile(title: StringsManager.logout),
        ],
      ),
    );;
  }
}
