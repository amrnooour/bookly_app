import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color? color;
  Color backgroundColor;
  BorderRadius? borderRadius;
  double? fontSize;
  CustomButton({Key? key,required this.text,required this.color,required this.backgroundColor,this.borderRadius,this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(12),
          )
        ),
          onPressed: (){},
          child: Text(text,style: Styles.textStyle18SemiBold.copyWith(
              color: color,fontWeight: FontWeight.w900,fontSize: fontSize),)),
    );
  }
}
