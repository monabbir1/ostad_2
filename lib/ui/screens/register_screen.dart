import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void _tabSignUpButton(){

  }

  void _tabForgotPassButton(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBackground(child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160,),
            Text('Get Started With',
            style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 20,),
            
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){},
                child: Icon(CupertinoIcons.chevron_right_circle,color: Colors.white,)),
            SizedBox(height: 50,),
            Center(
              child: Column(
                children: [
                  TextButton(onPressed: _tabForgotPassButton, child: Text('Forgot Password')),
                  SizedBox(height: 5,),
                  RichText(text: TextSpan(style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: "Don't have account?  "),
                        TextSpan(text: "Sign up",style: TextStyle(color: Colors.green),
                        recognizer: TapGestureRecognizer()..onTap = _tabSignUpButton
                        ),
                      ]
                  ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
