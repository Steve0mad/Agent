import 'package:agent/ui/HomeScreen.dart';
import 'package:agent/ui/auth/homepage.dart';
import 'package:agent/ui/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Stack(
        children: [
          Image.asset(
            'assets/images/startscreen.jpg',
            fit: BoxFit.cover, // Make sure the image covers the entire screen
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child:
                  Center(
                    child: Container(
                      child:
                      Text(
                        'Digital Agency',style: TextStyle(
                          color:Colors.brown ,
                          fontWeight:FontWeight.bold,
                          fontSize: 40.0),
                      ),
                    ),
                  ),
                  flex: 4,
                ),
                Expanded(
                  child:
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          'Manage your work freely',style: TextStyle(
                            color:Colors. brown ,
                            fontWeight:FontWeight.bold,
                            fontSize: 15.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( top: 30.0,
                              left: 20.0,right: 20.0),
                          child:
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(color:Colors.blue ,borderRadius: BorderRadius.circular(20.0)) ,
                            child: MaterialButton(
                              height: 50.0,
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context)=> MainScreen()));
                              },
                              child: Text('GET STARTED',
                                style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                  flex: 3,
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}