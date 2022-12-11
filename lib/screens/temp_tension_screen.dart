

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:sampleproject/const/custom_styles.dart';
import 'package:sampleproject/model/sensor.dart';
import 'package:sampleproject/route/routing_constants.dart';
import 'package:sampleproject/widgets/my_sensor_card.dart';
import 'package:flutter/material.dart';



class TempCourScreen extends StatefulWidget {
  const TempCourScreen({Key? key}) : super(key: key);

  @override
  _TempCourScreenState createState() => _TempCourScreenState();
}

class _TempCourScreenState extends State<TempCourScreen> {
  List<double>? tempList;
  List<double>? rhList;

  static String collectionName = 'sensors';
  final sensorRef = FirebaseFirestore.instance
      .collection(collectionName)
      .withConverter<Sensor>(
        fromFirestore: (snapshots, _) => Sensor.fromJson(snapshots.data()!),
        toFirestore: (movie, _) => movie.toJson(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot<Sensor>>(
      stream: sensorRef.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final data = snapshot.requireData;

        if (tempList == null) {
          tempList = List.filled(5, data.docs.first.data().temperature,
              growable: true);
        } else {
          tempList!.add(data.docs.first.data().temperature);
          tempList!.removeAt(0);
        }

        if (rhList == null) {
          rhList =
              List.filled(5, data.docs.first.data().humidity, growable: true);
        } else {
          rhList!.add(data.docs.first.data().humidity);
          rhList!.removeAt(0);
        }

        return Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 30),
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [   
                        SizedBox(height: 15),
                        
                          IconButton(
                            onPressed: () { 
                              Navigator.pushNamedAndRemoveUntil(
                                 context, HomeScreenRoute, (Route<dynamic> route) => false);
                               ;
                            },
                            icon: Image(
                              width: 24,
                              color: Colors.white,
                              image: AssetImage("assets/images/back_arrow.png"),
                            ),
                          ),
                        
                          
                          
                        /*Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            collectionName,
                            style: kHeadline,
                          ),
                        )*/
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( 
                            'Temperatuer & Voltage' ,
                            style: kHeadline,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MySensorCard(
                                value: data.docs.first.data().humidity,
                                unit: 'V',
                                name: 'Voltage',
                                assetImage: AssetImage(
                                  'assets/images/volt.png',
                                ),
                                trendData: rhList!,
                                linePoint: Colors.blueAccent,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              MySensorCard(
                                value: data.docs.first.data().temperature,
                                unit: '\'C',
                                name: 'Temperature',
                                assetImage: AssetImage(
                                  'assets/images/temperature_icon.png',
                                ),
                                trendData: tempList!,
                                linePoint: Colors.redAccent,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign out of Firebase? ",
                        style: kBodyText,
                      ),
                      GestureDetector(
                        onTap: _signOut,
                        child: Text(
                          "Sign Out",
                          style: kBodyText.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),*/
                 /* SizedBox(
                    height: 40,
                  ),*/
                ],
              ),
            ),
          ]),
        );
      },
    ));
  }

  /*_signOut() async {
    await AuthHelper.signOut();
    Navigator.pushNamedAndRemoveUntil(
        context, SplashScreenRoute, (Route<dynamic> route) => false);
  }*/
}
