// ignore_for_file: camel_case_types

import 'package:flutter/material.dart'; 
import 'package:syncfusion_flutter_charts/charts.dart'; 

 class chart_dash extends StatefulWidget {
  const chart_dash({Key? key}) : super(key: key);

  @override
  State<chart_dash> createState() => _chart_dashState();
}

class _chart_dashState extends State<chart_dash> {  
  
  final List<DataChart> dataChart =[ 
     DataChart(DateTime(0,1,1) , 41.5),
     DataChart(DateTime(0,1,2) , 50.8) ,
     DataChart(DateTime(0,1,3) , 60.1),
     DataChart(DateTime(0,1,4) , 78.5), 
     DataChart(DateTime(0,1,5) , 100.5),
     DataChart(DateTime(0,1,6) , 120.5),
     DataChart(DateTime(0,1,7) , 135.6) ,
     DataChart(DateTime(0,1,8) , 41.5) ,
     DataChart(DateTime(0,1,9) , 41.5),
     DataChart(DateTime(0,1,10) , 41.5) ,
     DataChart(DateTime(0,1,11) , 41.5),
     DataChart(DateTime(0,1,12) , 41.5)
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