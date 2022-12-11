

import 'package:flutter/material.dart';
 
import 'chart_con_ann.dart';
  
class annul_chart_con extends StatelessWidget {
  const annul_chart_con({Key? key}) : super(key: key);

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
           children: [   
            const SizedBox( 
              height: 15) ,
             Container(   
                 child: const Text("Consommation Par Jour" ,style: TextStyle(fontSize: 17),)


              ),
          const   chart_dash() ,     
            
            
               

            
            
              
            
           





        ],

        ),
        );



        
        





  }
    
    
  }

            
        