import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CustomErrorWidget({Key? key,required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMessage,style: Styles.textStyle18SemiBold,textAlign: TextAlign.center,));
  }
}
