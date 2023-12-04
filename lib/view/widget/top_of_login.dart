import 'package:flutter/material.dart';
import 'package:flutter_demo/view/widget/text_field.dart';

Positioned bottom = Positioned(
  left: 389.67,
  top: 734.23,
  child: Transform(
    transform: Matrix4.identity()
      ..translate(0.0, 0.0)
      ..rotateZ(2.94),
    child: Container(
      width: 135.05,
      height: 135.05,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.69, -0.72),
          end: Alignment(-0.69, 0.72),
          colors: [Color(0xFFDA8BD9), Color(0xFFF3BD6B)],
        ),
        shape: OvalBorder(),
      ),
    ),
  ),
);

List<Positioned> top = [
  Positioned(
    left: -124,
    top: -91,
    child: Container(
      width: 428,
      height: 374,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.43, -0.90),
          end: Alignment(0.43, 0.9),
          colors: [Color(0xFFF3BD6B), Color(0xFFDA8BD9)],
        ),
        shape: OvalBorder(),
      ),
    ),
  ),
  Positioned(
    left: 46,
    top: -13,
    child: Container(
      width: 258,
      height: 258,
      decoration: const ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(width: 2, color: Color(0xFFA05674)),
        ),
      ),
    ),
  ),
  Positioned(
    left: -15,
    top: -7,
    child: Container(
      width: 110,
      height: 110,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.61, -0.79),
          end: Alignment(-0.61, 0.79),
          colors: [Color(0xFFE8C082), Color(0xFFCE70D3)],
        ),
        shape: OvalBorder(),
      ),
    ),
  ),
  Positioned(
    left: 47.85,
    top: 132,
    child: Transform(
      transform: Matrix4.identity()
        ..translate(0.0, 0.0)
        ..rotateZ(0.67),
      child: Container(
        width: 41.78,
        height: 41.78,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.17, -0.98),
            end: Alignment(0.17, 0.98),
            colors: [Color(0xFFE8C082), Color(0xFF914576)],
          ),
          shape: OvalBorder(),
        ),
      ),
    ),
  ),
  Positioned(
    left: 251.85,
    top: 31,
    child: Transform(
      transform: Matrix4.identity()
        ..translate(0.0, 0.0)
        ..rotateZ(0.67),
      child: Container(
        width: 20,
        height: 20,
        decoration: const ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.61, -0.79),
            end: Alignment(-0.61, 0.79),
            colors: [Color(0xFFE8C082), Color(0xFFB76C92)],
          ),
          shape: OvalBorder(),
        ),
      ),
    ),
  ),
  const Positioned(
    left: 130,
    top: 103,
    child: Text(
      'LOGIN',
      style: TextStyle(
        color: Color(0xFF914576),
        fontSize: 32,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
  ),
  
];
