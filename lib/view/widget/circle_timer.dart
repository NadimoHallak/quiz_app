import 'package:flutter/material.dart';

class CircleTimer extends StatelessWidget {
  const CircleTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment(-0.01, -1.00),
            end: Alignment(0.01, 1),
            colors: [Color(0xFFDA8BD9), Color(0xFFF3BD6B)],
          )),
      child: const Center(
        child: Text(
          '18',
          style: TextStyle(
            color: Color(0xFF8D376F),
            fontSize: 20,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ),
    );
  }
}
