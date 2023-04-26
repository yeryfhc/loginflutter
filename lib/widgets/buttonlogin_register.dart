import 'package:flutter/material.dart';

class ButtomLoginRegister extends StatelessWidget {
  const ButtomLoginRegister({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 300,
        color: const Color.fromARGB(255, 255, 98, 50),
        child: TextButton(onPressed: (){},
         child: Center(child:
          Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),))),
    );
  }
}