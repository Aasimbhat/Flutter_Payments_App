// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:payment_app/component/colors.dart';

class AppButtons extends StatelessWidget {
  final double? fontSie;
  final IconData? icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  const AppButtons({
    Key? key,
    this.fontSie,
    this.icon,
    this.onTap,
    this.backgroundColor,
    this.iconColor,
    this.textColor,
     this.text,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: backgroundColor,
              ),
              child: Icon(icon,size: 30,color: iconColor,),
            ),
            text!=null?Text(
              text!,
              style: TextStyle(
                fontSize: 14,
                color: textColor
              ),
            ):Container()

          ],
        ),

      ),
    );
  }
}
