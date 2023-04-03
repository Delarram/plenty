import 'dart:async';

import 'package:flutter/material.dart';

import '../resources/color_const.dart';

class AnimatedBorder extends StatefulWidget {
  const AnimatedBorder({Key? key}) : super(key: key);

  @override
  State<AnimatedBorder> createState() => _AnimatedBorderState();
}

class _AnimatedBorderState extends State<AnimatedBorder> {
  int index = 0;
  List<Color> colors = [
    cPrimaryThree.withOpacity(0.5),
    cPrimaryThree.withOpacity(0.4),
    cPrimaryThree.withOpacity(0.3),
    cPrimaryThree.withOpacity(0.2),
    cPrimaryThree.withOpacity(0.1),
    cPrimaryThree.withOpacity(0.1),
    cPrimaryThree.withOpacity(0.2),
    cPrimaryThree.withOpacity(0.3),
    cPrimaryThree.withOpacity(0.4),
    cPrimaryThree.withOpacity(0.5),
    Colors.white
  ];
  Duration duration = const Duration(milliseconds: 250);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(duration, (timer) {
      index = (index + 1) % colors.length;
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      height: 55,
      width: 55,
      duration: duration,
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: colors[index],
              style: BorderStyle.solid,
              width: 4)),
      child: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: cPrimaryThree.withOpacity(0.5),
            shape: BoxShape.circle,
        ),
        child: Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: cPrimaryThree,
            boxShadow: [
              // BoxShadow(
              //   color: Colors.white.withOpacity(0.3),
              //   spreadRadius: 5,
              //   blurRadius: 7,
              //   offset: const Offset(0, 2), // changes position of shadow
              // ),
            ],
          ),
          child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              )),
        ),
      ),
    );
  }
}
