import 'package:attendance_app/UI/resources/assets_manager.dart';
import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:attendance_app/UI/resources/strings_manager.dart';
import 'package:attendance_app/UI/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../side_menu/side_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: TopBar(),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              height: height * .45,
              decoration: const BoxDecoration(
                color: ColorManager.primaryClr,
                borderRadius: BorderRadius.only(
                  bottomLeft: (Radius.circular(20)),
                  bottomRight: (Radius.circular(20)),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    AssetsManager.avatar,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nehal Gamal',
                    style: TextStyle(fontSize: 24, color: ColorManager.white),
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: height * .55,
              decoration: const BoxDecoration(
                color: ColorManager.secondaryClr,
              ),
              child: Column(
                children: [
                  SizedBox(height:30),
                  Container(
                    width: 146,
                    height:39,
                    color: ColorManager.green,
                    child: MaterialButton(
                      child: Text('Attending',style: TextStyle(color:ColorManager.white),),
                      onPressed: (){},
                    ),
                  ),
                  SizedBox(height:30),

                    Container(

                      width: 200,height: 30,
                      color: ColorManager.white,
                      child: Center(
                        child: Text('nehal@email.com'),
                      ),
                    ),

                  SizedBox(height:5),

                    Container(

                      width: 200,height: 30,
                      color: ColorManager.white,
                      child: Center(
                        child: Text('0298474728'),
                      ),
                    ),

                  SizedBox(height:5),

                  Container(

                      width: 200,height: 30,
                      color: ColorManager.white,
                      child: Center(
                        child: Text('Flutter Developer'),
                      ),

                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(11))
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
