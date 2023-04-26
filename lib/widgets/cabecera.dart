import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({ required this.name,
    super.key,
  });
     final String name;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
     borderRadius:const  BorderRadius.only(bottomLeft:Radius.circular(150) ),

      child: Container( 
        color: const  Color.fromARGB(255, 255, 98, 50),
      width: double.infinity,
      height: 300, 
        child: Stack(children:   [ Positioned(
          bottom: 30,right: 30,
          child: Padding(
            padding:const  EdgeInsets.all(8.0),
            child: Text(name,style: const TextStyle(color: Colors.white,fontSize: 20),),
          )),
         const  Center(child: Icon(Icons.circle_outlined,color: Colors.white,size: 80,),)
        ],
        
        ),
      ),
    );
  }
}