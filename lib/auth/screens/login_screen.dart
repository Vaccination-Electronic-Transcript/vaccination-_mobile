import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/auth/screens/register_screen.dart';
import 'package:graduation_project/profile/screens/profile_screen.dart';
import 'package:hexcolor/hexcolor.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final theme= Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor:HexColor('FFFFFF'),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                     Center(
                       child: SvgPicture.asset('assets/images/Injection.svg',

                       ),
                     ),
                Center(
                  child: Text("vaccination",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: HexColor('1A7399'),

                    ),
                  ),
                ),
                SizedBox(height: 20,),
          
              Text('SSN',
                  style: theme.bodyLarge,


          
                ),


               Container(
                 height: 49,
                 child: TextFormField(

                   decoration: InputDecoration(
                     border: OutlineInputBorder(

                      borderRadius:BorderRadius.circular(10)
                     )
                   ),

                 ),
               ),

          SizedBox(height: 31,),
          
          Text('Password',
            style: theme.bodyLarge,
          ),
              Container(


          
                height: 49,
                child: TextFormField(
          
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10)
                      )
                  ),
          
                ),
              ),
              TextButton(onPressed: (){},
                  child: Text('forget password ?',
                    style: theme.bodyLarge
                  )
              ),
              SizedBox(height: 64,),
              Container(
                width: 364,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: HexColor('#035766')
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>ProfileScreen()
          
          
                    )
                    );
                  },
                  child: Text('Login',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=>RegisterScreen()
                  )
                  );
                },
                    child: Text('create new account ',
                      style:theme.bodyLarge
                    )
                ),
              ),
          
          
          
          
          
            ],
          ),
        ),
      ),



    );
  }
}
