import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final void Function()? onpressed;

  const MyButton(
      {super.key,
      required this.child,
      required this.gradient,
      this.width = double.infinity,
      this.height = 50.0,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: gradient,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onpressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
