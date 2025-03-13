import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ostad_2/ui/widget/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firsNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  void tabSignInButton(){
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firsNameController.dispose();
    _lastNameController.dispose();
    _mobileController.dispose();
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 160,),
                  Text('Join With Us',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    textInputAction: TextInputAction.none,
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    textInputAction: TextInputAction.none,
                    controller: _firsNameController,
                    decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    textInputAction: TextInputAction.none,
                    controller: _lastNameController,
                    decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    textInputAction: TextInputAction.none,
                    controller: _mobileController,
                    decoration: InputDecoration(
                        hintText: 'Mobile',
                        hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    textInputAction: TextInputAction.none,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: 'Password',
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
                              TextSpan(text: "Already have an account?  "),
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
          ),
        ))
    );
  }
}
