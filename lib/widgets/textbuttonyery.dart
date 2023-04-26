import 'package:flutter/material.dart';

class TextbuttonYery extends StatelessWidget {
  

  const TextbuttonYery({
    super.key, 
    required this.text,
    this.ontap,
    required this.width,
     required this.aligment
    });
   final String text;
   final double width;
   final VoidCallback? ontap;
   final TextAlign aligment;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.only(right: 10),
      child: SizedBox(
        width: width,
        // color: Colors.red,
        child:TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(const Color.fromARGB(92, 255, 98, 50))

          ),
          
          onPressed: ontap, child: Text(text,style:  const TextStyle( fontSize:15,
          color: Color.fromARGB(255, 255, 98, 50),),))
      ),
    );
  }
}