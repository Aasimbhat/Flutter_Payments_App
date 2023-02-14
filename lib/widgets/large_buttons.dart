import 'package:flutter/material.dart';

import 'package:payment_app/component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color?  textColor;
  final String  text;
  final Function()? onTap;
  final bool? isBorder;

  const AppLargeButton({
    Key? key,
    this.backgroundColor,
    this.textColor,
    required this.text,
    this.onTap,
    this.isBorder,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30),
        height: 45,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2,
          color: AppColor.mainColor)
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25,
              color: textColor,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
