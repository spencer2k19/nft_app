import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Function onPressed;
  const CustomBackButton({Key? key,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed();
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF2F2F2),
        ),
        child: const Center(child: Icon(Icons.keyboard_arrow_left,color: Colors.black,),),
      ),
    );
  }
}
