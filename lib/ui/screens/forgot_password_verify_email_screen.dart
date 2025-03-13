import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/login_screen.dart';
import 'package:ostad_2/ui/screens/pin_verificationl_screen.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();



  void tabSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginScreen()), (pre)=> false);
  }
  void tabSubmitButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PinVerificationScreen()));
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
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160,),
                Text('Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),Text('A 6 digit verification pin will be send to your email',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey
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
                ElevatedButton(onPressed: tabSubmitButton,
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
