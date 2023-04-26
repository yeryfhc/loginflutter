import 'package:flutter/material.dart';

import 'textbuttonyery.dart';

class ButtonBajo extends StatelessWidget {
  const ButtonBajo({
    required this.ontap,
    required this.name,
    required this. text,
    super.key,
  });
  final VoidCallback  ontap;
  final String text;
  final String name;
  
  @override
  Widget build(BuildContext context) {
     
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
      Text(name,
      textAlign: TextAlign.end,style: const  TextStyle(fontSize: 15),
      ), 
      TextbuttonYery(aligment: TextAlign.end,
        text:text,width:80,ontap:ontap,)
      
     ],);
  }
}







