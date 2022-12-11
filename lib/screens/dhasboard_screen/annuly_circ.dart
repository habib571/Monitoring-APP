import 'package:flutter/material.dart';
 
import 'circular.dart';
  
// ignore: camel_case_types
class annul_circ extends StatelessWidget {
  const annul_circ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return   Card(  
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ) , 
        shadowColor :const Color.fromARGB(255, 36, 170, 24) ,
        color:const Color.fromARGB(255, 255, 255, 255),  
        elevation: 25,
       
        child: Column( 
          
          mainAxisAlignment:  MainAxisAlignment.center, 
          crossAxisAlignment:  CrossAxisAlignment.center,
           children:const [  
            circular() ,     
            SizedBox( 
              height: 30,
            )   , 
              
               

            
            
              
            
           





        ],

        ),
        );



        
        





  }
    
    
  }
