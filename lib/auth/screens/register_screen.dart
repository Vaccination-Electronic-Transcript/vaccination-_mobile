import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/auth/screens/login_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context).textTheme;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Padding(
              padding: const EdgeInsets.only(left: 65,top: 35),
              child: Row(
                children: [
                 SvgPicture.asset('assets/images/Injection.svg',
                   height: 86,
                   width: 82,
                 ),

                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 1,
        
                    color: HexColor('035766'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('vaccination',
                    style: theme.bodyLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                  ('User information'),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: HexColor('1A7399')

        
                ),
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('Name',
                style: theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        

                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('SSN',
                style: theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        
                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('Phone',
                style:theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        

                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('Email',
                style: theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        

                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('password',
                style:theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        

                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 25,),
              child: Text('confirm password',
                style: theme.bodyLarge
        
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 15),
              child: Container(
        
                decoration: BoxDecoration(
        

                    borderRadius: BorderRadius.circular(10)
                ),
        
                height: 49,
                child: TextFormField(
        
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
        
                ),
              ),
            ),
            Center(
              child: Container(
                width: 158,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: HexColor('#035766')
                ),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>LoginScreen()


                      )
                  );
                },
                  child: Text('Sign Up',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        
        
        
        
        
          ],
        ),
      ),
    );
  }
}
