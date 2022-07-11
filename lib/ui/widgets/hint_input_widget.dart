import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/ui/shared/title_style.dart';

import '../shared/colors.dart';

class HintInputWidget extends StatelessWidget {
  final String label;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved;
  final TextEditingController? controller;
  int maxLines;
  bool obscureText;
  String initialValues = '';
  Color textColor;
  int? maxLenght;
  Widget? icon;
  Function(String)? onChange;

  HintInputWidget(
      {Key? key,
        required this.label,
        required this.textInputAction,
        required this.keyboardType,
        this.validator,
        this.onSaved,
        this.controller,
        this.initialValues = '',
        this.obscureText = false,
        this.maxLines = 1,
        this.textColor = Colors.white,
        this.maxLenght,
        this.icon,
        this.onChange})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValues,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      controller: controller,
      validator: this.validator,
      maxLength: maxLenght,
      onSaved: onSaved,
      onChanged: onChange,

      style: const TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      cursorWidth: 2,
      cursorHeight: 18,




      decoration: InputDecoration(

        fillColor: Colors.white,
        prefixIcon:Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
        hintText: label,
        errorStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 13
        ),
        hintStyle: titleStyleNormal.copyWith(
          color: const Color(0xFF475569)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide:  const BorderSide(
              color: Colors.red,
              width: 1,

            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: blueColor, width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Color(0xFFD9D9D9), width: 1)),
      ),
    );
  }
}