






import 'package:sampleproject/screens/lum_courant_screen.dart';
import 'package:sampleproject/home/home.dart';
import 'package:sampleproject/route/routing_constants.dart';
import 'package:sampleproject/screens/temp_tension_screen.dart';
import 'package:sampleproject/screens/signin_screen.dart';
import 'package:sampleproject/screens/signup_screen.dart';
import 'package:sampleproject/screens/splash_screen.dart';
import 'package:sampleproject/screens/undefined_screen.dart'; 
import 'package:sampleproject/screens/production_screen.dart'; 
import 'package:sampleproject/screens/dashboard.dart';
import 'package:flutter/material.dart'; 


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreenRoute:
      return MaterialPageRoute(builder: (context) => SplashScreen());

    case SignInScreenRoute:
      return MaterialPageRoute(builder: (context) => SignInScreen());

    case SignUpScreenRoute:
      return MaterialPageRoute(builder: (context) => SignUpScreen());

    case TempCourScreenRoute:
      return MaterialPageRoute(builder: (context) => TempCourScreen());   
    
    case BrightnessScreenRoute : 
    return MaterialPageRoute(builder: (context) =>  lumCou() ) ;

    case HomeScreenRoute :
      return MaterialPageRoute(builder:(context) => Home()) ; 
  case ProductionScreenRoute : 
      return MaterialPageRoute(builder:(contex)=> Production() ) ; 
    case DashboardScreenRoute : 
      return MaterialPageRoute(builder:(context)=> Home_Screen()) ;

     
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedView(
                name: settings.name!,
              ));
  }
}
