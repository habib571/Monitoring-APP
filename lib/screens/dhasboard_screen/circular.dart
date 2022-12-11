

import 'package:flutter/material.dart';


import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: camel_case_types
class circular extends StatefulWidget {
  const circular({Key? key}) : super(key: key);

  @override
  State<circular> createState() => _circularState();
}

// ignore: camel_case_types
class _circularState extends State<circular> { 
  late List<Pdata> _chartdata ;  
  late TooltipBehavior _tooltipBehavior ;
  @override 
  void initState() {
    _chartdata = _getchartdata() ; 
_tooltipBehavior =TooltipBehavior(enable: true) ;
     super.initState() ;
  }
  @override
  Widget build(BuildContext context) { 
     return
      SfCircularChart(  
        title:ChartTitle(text:'Production & consommation' ) , 
        legend: Legend(isVisible:true,overflowMode: LegendItemOverflowMode.wrap),
        tooltipBehavior: _tooltipBehavior,
         series: <CircularSeries>[  
        PieSeries<Pdata,String>( 
          dataSource:  _chartdata , 
          xValueMapper: (Pdata data,_)=> data.continet ,
          yValueMapper: (Pdata data,_)=> data.gdp , 
          dataLabelSettings: const DataLabelSettings(isVisible: true) ,
          enableTooltip: true

        
        )




      ],

      ) ;
     
     
  } 

  List<Pdata> _getchartdata() {  
    final List<Pdata> chartdata =[  
      Pdata('Production(KW)',3500 )  ,
      Pdata('Consommation(KW)', 2300)

    ]  ;
    return chartdata;

  }
} 
class Pdata {
  Pdata(this.continet ,this.gdp) ;
  final String continet ;
  final int gdp ;
}


