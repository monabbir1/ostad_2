import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ostad_2/ui/screens/login_screen.dart';
import 'package:ostad_2/ui/utils/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _moveNextScreen();
  }

  Future<void> _moveNextScreen ()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
              width: double.maxFinite,
              height: double.maxFinite,
              AssetsPath.backgroundSvg,fit: BoxFit.cover,),
          Center(child: Image.asset(AssetsPath.monaLogo))
        ],
      ),
    );
  }
}
