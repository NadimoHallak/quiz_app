import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    super.key,
    required this.onTap,
  });
  void Function()? onTap;

  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 37,
      top: 499,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 287,
          height: 59,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(1.00, -0.00),
              end: Alignment(-1, 0),
              colors: [Color(0xFFDA8BD9), Color(0xFFF3BD6B)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
