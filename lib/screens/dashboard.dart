import 'package:flutter/material.dart'; 
import 'package:sampleproject/screens/dhasboard_screen/annul_dashboard.dart'; 

import 'package:sampleproject/route/routing_constants.dart';


class Home_Screen extends StatefulWidget {

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color(0xff4b4b87);

  TabController? _tabController;

  @override
  void initState() {
    _tabController =  TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 221, 221),
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: TextStyle(fontSize: 27, color: colorstheme),
        ),
        centerTitle: true,
        shadowColor: Color.fromARGB(0, 136, 54, 54),
        leading: Padding(
          padding:  EdgeInsets.only(left:15.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: colorstheme,
              size: 30,
            ),
           onPressed: () { 
                              Navigator.pushNamedAndRemoveUntil(
                                 context, HomeScreenRoute, (Route<dynamic> route) => false);
                               
                            },
          ),
        ),
      ),
      body: Column(
        children: [ 
         const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: TabBar(
                isScrollable: true,
                indicatorPadding:const  EdgeInsets.all(10),
                labelColor: Colors.white,
                unselectedLabelColor: colorstheme,
                labelStyle:const  TextStyle(fontSize: 20),
                labelPadding:
                 const   EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
                indicator: BoxDecoration(
                    color: colorstheme,
                    borderRadius: BorderRadius.circular(20)),
                controller: _tabController,
                tabs:const [
                  Text('Day'),
                  Text('Month'),
                  Text('Year'),
                ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController, children: const[
              calendar() ,
              calendar() ,
              calendar()

          
            ]),
          )
        ],
      ),
    );
  }
}