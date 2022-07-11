import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/title_style.dart';

class FilledButton extends StatelessWidget {
  final String title;
  final Function handler;
  const FilledButton({Key? key,required this.title,required this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
        minWidth: double.infinity,
        height: 56,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
        ),
        color: blueColor,
        child: Text(title,style: titleStyleNormal.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600
        ),),

        onPressed: (){
          handler();
        });
  }
}
