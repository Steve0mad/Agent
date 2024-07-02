//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';
// import '../ui/auth/HomeScreen.dart';
// import '../ui/auth/login/login_screen.dart';
// class SplashScreen extends StatefulWidget {
//   static const String routeName="/Splash";
//   SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration(seconds: 2),(){
//       SplashFinish();
//     });
//     return Scaffold(
//       backgroundColor: Color(0xfffd8901),
//       body: Column(
//         children: [
//           Center(
//             child: Image.asset("assets/images/ture.png",height: 200,width: 300,),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Future<void> SplashFinish() async {
//     var provider= Provider.of<AuthUserProvider>(context,listen: false);
//     if(provider.isFirebaseLoggedin()){
//       await provider.retrieveDatabaseUser();
//       Navigator.pushReplacementNamed(context, HomeScreen.routeName);
//     }else {
//       Navigator.pushReplacementNamed(context, LoginScreen.routeName);
//     }
//
//
//   }
// }