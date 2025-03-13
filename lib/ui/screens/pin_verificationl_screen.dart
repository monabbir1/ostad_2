import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/screens/login_screen.dart';
import 'package:ostad_2/ui/screens/reset_password_screen.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final TextEditingController _pinCodeController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  void tabSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginScreen()), (pre)=> false);
  }
  void tabSubmitButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
  }

  @override
  void dispose() {
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screenBackground(child:
        Padding(
          key: _formKey,
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 160,),
                Text('Pin Verification',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),Text('A 6 digit verification pin will be send to your email',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey
                  ),
                ),
                SizedBox(height: 20,),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: Colors.white,
                    selectedColor: Colors.green
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  controller: _pinCodeController,
                  appContext: context,
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
                    child: Text('Verify')),
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
                        )
                      )
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
