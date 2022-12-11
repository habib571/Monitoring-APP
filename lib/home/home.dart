import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 
import 'package:sampleproject/screens/home_screen.dart'; 
import 'package:sampleproject/auth_helper.dart';
import 'package:sampleproject/const/custom_styles.dart'; 
import 'package:sampleproject/route/routing_constants.dart';



class Home extends StatefulWidget { 
   const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() =>  HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) { 
      
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 1, 19),
      body: Column(
        children: <Widget>[
         const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "HOME",
                      style: GoogleFonts.openSans(
                        textStyle:const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                   const SizedBox(
                      height: 4,
                    ),
                    
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/images/notification.png",
                    width: 24,
                  ),
                  onPressed: () { 

                  },
                )
              ],
            ),
          ),
         const SizedBox(
            height: 20,
          ),
        GridDashboard()  ,
        SizedBox(height: 20) , 
        Row(  
          mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign out of App ",
                        style: kBodyText,
                      ),
                      GestureDetector(
                        onTap: _signOut,
                        child: Text(
                          "Sign Out",
                          style: kBodyText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ), 
                  SizedBox( height: 20) ,

        
        
        ],
        
      ),
    );
  } 
  _signOut() async {
    await AuthHelper.signOut();
    Navigator.pushNamedAndRemoveUntil(
        context, SplashScreenRoute, (Route<dynamic> route) => false);
}
}