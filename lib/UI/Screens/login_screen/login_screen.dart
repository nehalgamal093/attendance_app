import 'package:attendance_app/UI/resources/assets_manager.dart';
import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:attendance_app/UI/resources/strings_manager.dart';
import 'package:attendance_app/UI/widgets/field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../forget_password/forget_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                )),
            child: Center(
              child: Image.asset(
                AssetsManager.logo,
                width: 250,
                height: 250,
              ),
            ),
          ),
          Container(
            width: width,
            height: height * .55,
            decoration: const BoxDecoration(
              color: ColorManager.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                children: [
                  const Text(
                    StringsManager.login,
                    style: TextStyle(fontSize: 35),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FieldInput(
                    icon: Icon(
                      Icons.person,
                      color: ColorManager.primaryClr,
                    ),
                    hint: StringsManager.email,
                  ),
                  SizedBox(height: 10),
                  FieldInput(
                    icon: Icon(
                      Icons.lock,
                      color: ColorManager.primaryClr,
                    ),
                    hint: StringsManager.password,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: width * .8,
                    height: height * .08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: ColorManager.primaryClr,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        StringsManager.login,
                        style:
                            TextStyle(fontSize: 20, color: ColorManager.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          ),
                        );
                      },
                      child: Text(
                        StringsManager.forgetPassword,
                        style: TextStyle(color: ColorManager.primaryClr),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    ),);
  }
}
