import 'package:bridge_v2/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onPressed,
    this.height,
    this.width,
    this.colour,
    this.padding,
    this.child,
  });

  final void Function() onPressed;
  final double? height;
  final double? width;
  final Color? colour;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height ?? 56.h,
      minWidth: width ?? 327.w,
      color: colour ?? kYellowBackground,
      padding: padding,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: child,
    );
  }
}
