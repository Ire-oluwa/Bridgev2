import 'package:flutter/material.dart';

class MyListTiles extends StatelessWidget {
  const MyListTiles({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.onTap,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      onTap: onTap,
    );
  }
}
