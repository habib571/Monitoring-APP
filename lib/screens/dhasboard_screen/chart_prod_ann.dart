// ignore_for_file: camel_case_types

import 'package:flutter/material.dart'; 
import 'package:syncfusion_flutter_charts/charts.dart'; 

 class chart_dash_prod extends StatefulWidget {
  const chart_dash_prod({Key? key}) : super(key: key);

  @override
  State<chart_dash_prod> createState() => _chart_dash_prodState();
}

class _chart_dash_prodState extends State<chart_dash_prod> {  
  
  final List<DataChart> dataChart =[ 
     DataChart(DateTime(0,1,1) , 41.5),
     DataChart(DateTime(0,1,2) , 50.8) ,
     DataChart(DateTime(0,1,3) , 60.1),
     DataChart(DateTime(0,1,4) , 78.5), 
     DataChart(DateTime(0,1,5) , 100.5),
     DataChart(DateTime(0,1,6) , 120.5),
     DataChart(DateTime(0,1,7) , 135.6) ,
     DataChart(DateTime(0,1,8) , 137.8) ,
     DataChart(DateTime(0,1,9) , 145.5),
     DataChart(DateTime(0,1,10) , 122.5) ,
     DataChart(DateTime(0,1,11) , 108.5),
     DataChart(DateTime(0,1,12) , 52.5)
  ]  ;
   



  
  @override
  Widget build(BuildContext context) { 
    return SfCartesianChart(  
      primaryXAxis: DateTimeAxis(), 
      series:  <ChartSeries<DataChart,DateTime>>[  
        LineSeries<DataChart,DateTime>
        (dataSource: dataChart, 
         xValueMapper: (DataChart data, _)=> data.dateTime,
         yValueMapper: (DataChart data ,_)=> data.Prod
         )



      ],



    ) ;
    
  }
}  
 
class DataChart {
  DataChart(this.dateTime, this.Prod);
   
  
  
  final DateTime dateTime ; 
  // ignore: non_constant_identifier_names
  final double Prod ;  

}