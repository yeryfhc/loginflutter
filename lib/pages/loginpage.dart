import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/widgets.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    var size,height,width;
     size =MediaQuery.of(context).size;
     height = size.height;
     width=size.width;

    
  height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Cabecera(name: 'Login',),
            SizedBox(height: height/50),
             const TextEnter(icono: Icons.email,text: 'Email',obscuretext: false,),
               SizedBox(height:height/50),
             const TextEnter(icono: Icons.key,text: 'Password',obscuretext: true,),
             TextbuttonYery( aligment: TextAlign.end,
              width: 300,   text: 'Forget you password?',ontap:(){},),
              SizedBox(height: height/20,),
            const  ButtomLoginRegister(text: 'Login',),
             SizedBox(height: height/50,),
           ButtonBajo(name: 'Dont have an acount?',text: 'Register',ontap: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=> const RegisterPage()));
             Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const RegisterPage(),
                  
                    duration: const  Duration(milliseconds: 200),
                  ),
                );
           },)
          ],
        ),
      ),
    );
  }
}

