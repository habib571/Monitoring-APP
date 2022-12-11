


import 'package:flutter/material.dart';
 
import 'chart_prod_ann.dart';
  
class annul_chart_prod extends StatelessWidget {
  const annul_chart_prod({Key? key}) : super(key: key);

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
                 child: const Text("Production Par Jour" ,style: TextStyle(fontSize: 17),)


              ),
          const   chart_dash_prod() ,     
            
            
               

            
            
              
            
           





        ],

        ),
        );



        
        





  }
    
    
  }

            
        