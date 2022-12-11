import 'package:flutter/material.dart'; 
import 'annuly_circ.dart';
import 'annuly_chart_con.dart'; 
import 'annuly_chart_prod.dart';


            
  
   // ignore: camel_case_types
   class calendar extends StatefulWidget { 
  
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _calendarState();
}

// ignore: camel_case_types
class _calendarState extends State<calendar> { 
  DateTime date= DateTime.now();
  @override
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Colors.white,
      
       body : 
      
      
    ListView(   
      
      children: [ 
    

 
        Padding(padding: 
          const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 30),
       
        child:Column(   
          
          children: <Widget>[ 
          const  SizedBox(height: 10),
            Text('${date.day}/${date.month}/${date.year}' ),
            ElevatedButton( 
               
              child: const Text('Pick a date'), 
              
              onPressed: ()  async{ 
                DateTime? newdate = await showDatePicker
                (context: context, 
                initialDate: date, 
                firstDate: DateTime(2013), 
                lastDate: DateTime(2025)
                )  ; 
                if(newdate==null) return ; 
                setState(() {
                   date =newdate ;
                });
                
              },
            ), 
            const SizedBox 
            (height: 20) ,  
           const annul_circ() ,  
           const SizedBox( height: 45) ,
           const annul_chart_con() ,
           const  SizedBox(height:45 ) , 
           const annul_chart_prod() ,



          ],
        ),
     
    )]));
  }
}

    
 
