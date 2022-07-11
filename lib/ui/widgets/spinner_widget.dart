import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import '../shared/colors.dart';
import '../shared/title_style.dart';


class DropDownWidget extends StatefulWidget {
  final String label;
  final List<String> elements;
  final String initialValue;
  final Function selectElement;
  String? hint;

   DropDownWidget({Key? key,
    required this.label,
    required this.elements,
    required this.initialValue,
    required this.selectElement,
   this.hint}) : super(key: key);
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {

  List<DropdownMenuItem<String>> _getDropdownItems()
  {
    List<DropdownMenuItem<String>> elementsWidget =[];


    for(String element in widget.elements)
    {
      var newItem= DropdownMenuItem(child: Text(element,style: titleStylePrimary,),value: element,);
      elementsWidget.add(newItem);
    }
    return elementsWidget;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 41,


      child: DropdownButtonFormField<String>(
        icon: const Icon(Icons.arrow_drop_down_outlined,color: Color(0xFFC4C4C4),),
        decoration:  const InputDecoration(

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
           borderSide: BorderSide(
             color: blueColor,
             style: BorderStyle.solid,
             width: 2
           ),

          ),
           contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                  color: blueColor,
                  style: BorderStyle.solid,
                  width: 1
              ),

            )



        ),
        hint: Text(widget.label,style: titleStyleNormal.copyWith(
          color: Colors.black
        ),),
        items: _getDropdownItems(),
        style: titleStyleNormal.copyWith(color:blueColor),
        value: widget.initialValue,
        onChanged: (value){
          widget.selectElement(value);
        },
      ),
    );
  }
}