import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatefulWidget {
  final String title;
  const MenuTile({Key? key,required this.title}) : super(key: key);

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.all(Radius.circular(10),)
        ),
        child:Center(
          child:  Text(widget.title,style:TextStyle(color: ColorManager.grey)),
        ),
      ),
    );
  }
}
