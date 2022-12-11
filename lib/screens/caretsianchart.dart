



import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:async';
import 'dart:math' as math; 


class cartesian_screen extends StatefulWidget {
 const cartesian_screen({Key? key}) : super(key: key);

  @override
  _cartesian_screenState createState() => _cartesian_screenState();
}


class _cartesian_screenState extends State<cartesian_screen> {  
  
  late List<LiveData> chartData;
  late ChartSeriesController _chartSeriesController;
  TrackballBehavior?  _trackballBehavior;
  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);  
   
    _trackballBehavior =TrackballBehavior(  
      enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipSettings: const InteractiveTooltip(format: 'Production')

    );
    super.initState();
  } 

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
            body: SfCartesianChart(
                series: <LineSeries<LiveData, DateTime >>[
          LineSeries<LiveData, DateTime>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            dataSource: chartData,
            color: const Color.fromRGBO(192, 108, 132, 1),
            xValueMapper: (LiveData sales, _) => sales.time,
            yValueMapper: (LiveData sales, _) => sales.speed, 
            
          )
        ],
                primaryXAxis: DateTimeAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interval: 5 ,
                    title: AxisTitle(text: 'Time ')),
                primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(width: 0),
                    majorTickLines: const MajorTickLines(size: 0),
                    title: AxisTitle(text: 'Production (Joule)')), 
                    trackballBehavior: _trackballBehavior 
                          )
                    ));
  }
 












  int time=19 ; 
  int min =0 ;
  void updateDataSource(Timer timer) {
    chartData.add(LiveData(DateTime(time++,min++),(math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
        addedDataIndex: chartData.length - 1, removedDataIndex: 0);
  }

 List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(DateTime(0,0,0,min++,time), 42),  
      LiveData(DateTime(0,0,0,0,time), 43), 
      LiveData(DateTime(0,0,0,0,time), 44), 
      LiveData(DateTime(0,0,0,0,time), 45), 
      LiveData(DateTime(0,0,0,0,time), 46), 
      LiveData(DateTime(0,0,0,0,time), 47), 
      LiveData(DateTime(0,0,0,0,time), 48),  
      LiveData(DateTime(0,0,0,0,time), 49), 
      LiveData(DateTime(0,0,0,0,time), 50), 
      LiveData(DateTime(0,0,0,0,time), 51), 
      LiveData(DateTime(0,0,5), 52), 
      LiveData(DateTime(0,0,5), 53), 
      LiveData(DateTime(0,0,5), 59),  
      LiveData(DateTime(0,0,5), 60), 
      LiveData(DateTime(0,0,5), 14), 
      LiveData(DateTime(0,0,5), 80), 
      LiveData(DateTime(0,0,5), 47), 
      LiveData(DateTime(0,0,5), 69),   
      LiveData(DateTime(0,0,5), 89), 
      LiveData(DateTime(0,0,5), 68), 
      LiveData(DateTime(0,0,5), 42), 
      
      
     
      
    
      
    
      
    
    
    
      
  

      



     
    ];
  }
}


class LiveData {
  LiveData(this.time, this.speed);
  final DateTime time;
  final num speed;
}