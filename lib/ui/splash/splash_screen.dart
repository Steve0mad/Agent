import 'package:agent/ui/auth/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../HomeScreen.dart';
import '../auth/HomeScreen.dart';
import '../auth/login/login_screen.dart';
// //import 'package:medbot/providers/auth_provider.dart';
// import 'package:medbot/ui/HomeScreen/homeScreen.dart';
// import 'package:medbot/ui/auth/login/LoginScreen.dart';
// import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName="Splash";
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){

     SplashFinish();


    });
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      body: Expanded(
        child: Center(
          child: Image.asset("assets/images/ture.png",width: 200,height: 200,),
        ),
      ),

    );
  }
  Future<void> SplashFinish() async {
    AuthUserProvider provider= Provider.of<AuthUserProvider>(context,listen: false);
    if(provider.isFirebaseLoggedin()){
     await provider.retrieveDatabaseUser();


    //  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));



    }else {
    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    }


  }
}
