import 'package:flutter/material.dart';
import 'package:loginflutter/pages/loginpage.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/widgets.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
      // ignore: unused_local_variable, prefer_typing_uninitialized_variables
      var size,height,width;
     size =MediaQuery.of(context).size;
     height = size.height;
     width=size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
         const  Cabecera(name:'Register' ,),
                SizedBox(height: height/50,),
         const  TextEnter(icono: Icons.person,text: 'Full Name',obscuretext: false,),
                SizedBox(height: height/50,),
         const  TextEnter(icono: Icons.email,text: 'Email',obscuretext: false,),
                SizedBox(height: height/50,),
         const  TextEnter(icono: Icons.phone,text: 'Number Phone',obscuretext: false,),
                SizedBox(height: height/50,),
         const  TextEnter(icono: Icons.key,text: 'Password',obscuretext: true,),
          
         SizedBox(height: height/50,),
         const  ButtomLoginRegister(text: 'Register',),
         SizedBox(height: height/50,),
            ButtonBajo(name: 'Already a member?',text: 'Login',ontap: (){
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration:const  Duration(milliseconds: 200),
                    child: const LoginPage(),
                  ),
                );
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
            },)
          ],
        ),
      ),
    );
  }
}

