import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/register_screen.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';

class ForgotPasswordVerifyEmail extends StatefulWidget {
  const ForgotPasswordVerifyEmail({super.key});

  @override
  State<ForgotPasswordVerifyEmail> createState() => _ForgotPasswordVerifyEmailState();
}

class _ForgotPasswordVerifyEmailState extends State<ForgotPasswordVerifyEmail> {

  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  void _tabSignUpButton(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
  }
  void _tabForgotPassButton(){

  }


  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
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
            Text('Your Email Address',
            style: Theme.of(context).textTheme.titleLarge,
            ),
            Text('A 6 digit verification pin will be send to your email',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey
                ),),
            SizedBox(height: 20,),
            
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
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
                  SizedBox(height: 5,),
                  RichText(text: TextSpan(style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: "Have account?  "),
                        TextSpan(text: "Sign In",style: TextStyle(color: Colors.green),
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
