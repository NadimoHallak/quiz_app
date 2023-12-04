import 'package:flutter/material.dart';
import 'package:flutter_demo/view/widget/login_button.dart';
import 'package:flutter_demo/view/widget/text_field.dart';
import 'package:flutter_demo/view/widget/top_of_login.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 360,
        height: 717,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Stack(
          children: [
            ...top,
            Positioned(
              left: 37,
              top: 329,
              child: SizedBox(
                width: 287,
                height: 59,
                child: MyTextField(
                  hint: "user@gmail.com",
                  icon: Icons.email,
                ),
              ),
            ),
            Positioned(
              left: 37,
              top: 414,
              child: SizedBox(
                width: 287,
                height: 59,
                child: MyTextField(
                  hint: "user@gmail.com",
                  icon: Icons.email,
                ),
              ),
            ),
            //? bottom
            LoginButton(onTap: () {}),

            bottom,
          ],
        ),
      ),
    );
  }
}
