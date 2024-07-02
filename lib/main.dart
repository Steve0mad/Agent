import 'package:agent/providers/auth_provider.dart';
import 'package:agent/startpage.dart';
import 'package:agent/ui/auth/HomeScreen.dart';
import 'package:agent/ui/auth/login/login_screen.dart';
import 'package:agent/ui/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'ui/auth/register.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthUserProvider(),
      child: MyApp(),
    ),
  );
  //wrap with provider widget ChangeNotifierProvider
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme( color: Colors.brown),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff3e6eca),primary: Color(0xff3e6eca))
      ),
      debugShowCheckedModeBanner: false,
      home: Startpage(),
      // remove the small badge that top right the screen
      initialRoute:SplashScreen.routeName,
     routes:{
       SplashScreen.routeName:(context)=>SplashScreen(),
       RegisterScreen.routeName:(context)=> RegisterScreen(),
        LoginScreen.routeName:(context)=> LoginScreen()
       },
    );
  }
}
// static const String routeName="Splash";