


import 'package:flutter/material.dart';
import "package:sampleproject/widgets/home_widget.dart" ; 
import 'package:sampleproject/route/routing_constants.dart';

 class GridDashboard extends StatefulWidget {
  const GridDashboard({Key? key}) : super(key: key);

  @override
  State<GridDashboard> createState() => _GridDashboardState();
}

class _GridDashboardState extends State<GridDashboard> { 
   
   
  @override
  Widget build(BuildContext context) {
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(   
     
  
          childAspectRatio: 1.0,
          padding:const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          
            children:[
      Container( 
                
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child:  InkWell(    
                 onTap:(){  Navigator.pushNamedAndRemoveUntil(
                                 context, TempCourScreenRoute, (Route<dynamic> route) => false);
                               ;

                  }, 
                  child:const Menu( img: "assets/images/volt.png",
                     event: "", 
                     subtitle: 'Voltage &\nTemperature', 
                     title: 'visualize',
                   ) 
                   )
                   ),

  
          Container(
                  decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
                  child:  InkWell(    
                      onTap:(){  
                         Navigator.pushNamedAndRemoveUntil(
                                 context, BrightnessScreenRoute, (Route<dynamic> route) => false);
                               ;

                      }, 
                    child:  const Menu(
                      title: 'visualize',
                       subtitle: 'Intensity &\n Brightness', 
                       event: '',
                       img: 'assets/images/courant.png' ,
                        )
                        


                        )
                        ), 
                


               
        
          Container(
                  decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
                  child:  InkWell(    
                       onTap:(){  
                        Navigator.pushNamedAndRemoveUntil(
                           context, ProductionScreenRoute, (Route<dynamic> route) => false);
                            }, 
                  child: const Menu(
                    title: 'visualize',
                    subtitle: 'Production',
                    event: '',
                    img: 'assets/images/prod.png'
                       ) 
                       )
                ), 
            
          Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child:  InkWell(    
                 onTap:(){

                  }, 
                  child: const  Menu(
                    title: 'Check',
                     subtitle: 'consumption',
                      event: '', 
                      img: 'assets/images/consom.png'
                      )


                  )
                


               ) ,
        
        Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child:  InkWell(    
                 onTap:(){

                  }, 
                  child:const Menu(
                    title: 'Check',
                     subtitle: 'Energy Report',
                      event: '', 
                      img: 'assets/images/report.png'
                      ) 
                  )
                
                 ),
       Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child:  InkWell(    
               onTap: () { 
                              Navigator.pushNamedAndRemoveUntil(
                                 context, DashboardScreenRoute, (Route<dynamic> route) => false);
                               
                            },
                  child:const Menu(
                    title: 'Dashboard',
                     subtitle: '', 
                     event: '',
                      img: 'assets/images/dashboard.png'
                      )
                  )
                  )
      ]
      )
      );
      
        

      
                



  
    } }


  