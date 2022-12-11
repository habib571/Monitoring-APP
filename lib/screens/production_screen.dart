

import 'package:flutter/material.dart';

import 'package:sampleproject/screens/caretsianchart.dart'; 
import 'package:sampleproject/route/routing_constants.dart';


class Production extends StatefulWidget {
 const Production({Key? key}) : super(key: key);

  @override
  _ProductionState createState() => _ProductionState();
}


class _ProductionState extends State<Production> {  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar: AppBar(  
           leading :IconButton(
                            onPressed: () { 
                              Navigator.pushNamedAndRemoveUntil(
                                 context, HomeScreenRoute, (Route<dynamic> route) => false);
                               ;
                            },
                            icon: Image(
                              width: 24,
                              color: Colors.white,
                              image: AssetImage("assets/images/back_arrow.png"),
                            ),
                          ),
                        

       ), 
       body: cartesian_screen() 


    ) ;
  } }