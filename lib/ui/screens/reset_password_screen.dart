import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/login_screen.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  void tabSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (pre)=> false);
  }
  void tabSubmitButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  void tabForgotPass(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
  }

  @override
  void dispose() {
    _confirmPasswordController.dispose();
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
                Text('Set Password',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text('Create new password minimum length of 6 character with Latter and number combination',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey)
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
                      RichText(text: TextSpan(style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(text: "Have account?  "),
                            TextSpan(text: "Sign In",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),
                                recognizer:TapGestureRecognizer()..onTap = tabSignInButton
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
