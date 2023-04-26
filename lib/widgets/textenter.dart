import 'package:flutter/material.dart';

class TextEnter extends StatelessWidget {
 const TextEnter({super.key, required this.icono, required this.text,
  required this.obscuretext});
  final IconData icono;
  final   String text;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: 300,
      child: Column(children:[
        ClipRRect( borderRadius: BorderRadius.circular(20),
          child: Container(
            
            color: const Color.fromARGB(31, 122, 122, 122),
            child:  TextField(
              obscureText: obscuretext,
             cursorColor: const Color.fromARGB(255, 255, 98, 50),
               decoration: InputDecoration(
              
                
                filled: false,
                enabledBorder:InputBorder.none,
                border:InputBorder.none ,
             disabledBorder: InputBorder.none,
             prefixIcon:Icon(icono,color: Colors.grey,) ,
             hoverColor: const Color.fromARGB(255, 80, 80, 80),
             label: Text(text,style: const TextStyle(color: Color.fromARGB(255, 92, 92, 92)),),
             ),),
          ),
        )],),
    );
  }
}