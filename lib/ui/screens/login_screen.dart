import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/register_screen.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';
import 'forgot_password_verify_email_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;



  void tabSignUpButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
  }
  void tabForgotPass(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBackground(child:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 160,),
              Text('Get Started With',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                obscureText: _obscureText,
                textInputAction: TextInputAction.next,
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                  suffix: IconButton(onPressed: (){
                    setState(() {
                      _obscureText = ! _obscureText;
                    });
                  }, icon:
                  Icon(_obscureText ? Icons.visibility_off : Icons.visibility))
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(double.maxFinite),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)
                    )
                  ),
                  child: Icon(CupertinoIcons.arrow_right_circle)),
              SizedBox(height: 50,),
              Center(
                child: Column(
                  children: [
                    TextButton(onPressed: tabForgotPass, child: Text('Forgot Password')),
                    RichText(text: TextSpan(style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: "Don't have account?  "),
                          TextSpan(text: "Sign Up",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                              recognizer:TapGestureRecognizer()..onTap = tabSignUpButton
                          ),
                        ]
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ))
    );
  }
}
