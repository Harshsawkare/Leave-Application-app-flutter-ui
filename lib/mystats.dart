import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyStats extends StatefulWidget {
  const MyStats({Key? key}) : super(key: key);

  @override
  _MyStatsState createState() => _MyStatsState();
}

class _MyStatsState extends State<MyStats> {

  bool weekly = true;
  bool monthly = false;
  bool alltime = false;

  final List<ChartData> chartData = [
    ChartData(' ', 20, Color(0xff0065FF)),
    ChartData('  ', 40, Color(0xff5c91f9)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [

            //background
            Positioned.fill(
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xff5C91F9), Color(0xff0065FF)]
                            )
                        ),
                      )
                  ),
                  Align(
                    alignment: Alignment(0, 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      decoration: BoxDecoration(
                          color: Color(0xffecf0ff),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //main body
            Positioned.fill(
              child: Column(
                children: [

                  //top bar
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 14, bottom:10),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, size: 20),
                          ),
                          Text("My Stats",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "noramal"
                              ),),
                        ],
                      ),
                        onTap: () => Navigator.pop(context)
                    ),
                  ),

                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Container(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              children: [

                                //overall performance
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    children: [

                                      //texts
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text("Overall Performance",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontFamily: "heading"
                                          ),),
                                      ),
                                      Text("Jan 06 - Jan 12",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: "noramal"
                                        ),),

                                      //choices
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Color(0xffd8e1f3),
                                              borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Row(
                                            children: [

                                              //weekly
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: weekly ? Colors.white : Colors.transparent,
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Center(
                                                        child: Text("Weekly",
                                                          style: TextStyle(
                                                              color: weekly ? Colors.blue : Colors.grey,
                                                              fontSize: 16,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      setState(() {
                                                        weekly = true;
                                                        monthly = false;
                                                        alltime = false;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),

                                              //monthly
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: monthly ? Colors.white : Colors.transparent,
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Center(
                                                        child: Text("Monthly",
                                                          style: TextStyle(
                                                              color: monthly ? Colors.blue : Colors.grey,
                                                              fontSize: 16,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      setState(() {
                                                        weekly = false;
                                                        monthly = true;
                                                        alltime = false;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),

                                              //All time
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: alltime ? Colors.white : Colors.transparent,
                                                          borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Center(
                                                        child: Text("All time",
                                                          style: TextStyle(
                                                              color: alltime ? Colors.blue : Colors.grey,
                                                              fontSize: 16,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ),
                                                    ),
                                                    onTap: (){
                                                      setState(() {
                                                        weekly = false;
                                                        monthly = false;
                                                        alltime = true;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),

                                      //bar chart
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 180,
                                        child: Stack(
                                          children: [

                                            //background lines
                                            Positioned.fill(
                                              child: Column(
                                                children: [
                                                  Expanded(child: Container()),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 1,
                                                    color: Colors.black12,
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 1,
                                                    color: Colors.black12,
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 1,
                                                    color: Colors.black12,
                                                  ),
                                                  Expanded(child: Container()),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 1,
                                                    color: Colors.black12,
                                                  ),
                                                  Expanded(child: Container()),
                                                  Expanded(child: Container()),
                                                ],
                                              ),
                                            ),

                                            //bars
                                            Positioned.fill(
                                                child: Row(
                                                  children: [
                                                    Expanded(child: Container()),

                                                    //m
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 70,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                            color: Color(0xffDBE7FE),
                                                            borderRadius: BorderRadius.circular(10)
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("M",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //t
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 100,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                  begin: Alignment.topCenter,
                                                                  end: Alignment.bottomCenter,
                                                                  colors: [ Color(0xff0065FF), Color(0xff5C91F9)]
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 7),
                                                                child: Icon(Icons.star, color: Colors.white, size: 15,),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("T",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //w
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 50,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              color: Color(0xffDBE7FE),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("W",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //t
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 140,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                  begin: Alignment.topCenter,
                                                                  end: Alignment.bottomCenter,
                                                                  colors: [Color(0xff0065FF), Color(0xff5C91F9)]
                                                              ),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(top: 7),
                                                                child: Icon(Icons.star, color: Colors.white, size: 15,),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("T",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //f
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 80,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              color: Color(0xffDBE7FE),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("F",
                                                          style: TextStyle(
                                                              color: Colors.blue,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //S
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 80,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              color: Color(0xffDBE7FE),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("S",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                    //s
                                                    Column(
                                                      children: [
                                                        Expanded(child: Container()),
                                                        Container(
                                                          height: 80,
                                                          width: 20,
                                                          decoration: BoxDecoration(
                                                              color: Color(0xffDBE7FE),
                                                              borderRadius: BorderRadius.circular(10)
                                                          ),
                                                        ),
                                                        SizedBox(height: 14,),
                                                        Text("s",
                                                          style: TextStyle(
                                                              color: Colors.grey.shade800,
                                                              fontSize: 18,
                                                              fontFamily: "noramal"
                                                          ),),
                                                      ],
                                                    ),
                                                    Expanded(child: Container()),

                                                  ],
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 1,
                                          color: Colors.black12,
                                        ),
                                      ),

                                      //complete view
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                        child: Row(
                                          children: [

                                            //texts
                                            Column(
                                              children: [
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    children: [
                                                      Text("Complete View",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20,
                                                            fontFamily: "noramal"
                                                        ),),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 200,
                                                  child: Row(
                                                    children: [
                                                      Text("View your complete view for leaves",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontFamily: "noramal"
                                                        ),),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(child: Container()),

                                            //icon
                                            Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                color: Color(0x60ffb429),
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              child: Center(
                                                child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xffFFB429), size: 22,)
                                              ),
                                            )

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                //On time arrival
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 14),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Color(0xffff4880),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        children: [

                                          //circular percentage indicator
                                          CircularPercentIndicator(
                                            radius: 70,
                                            lineWidth: 7,
                                            animation: true,
                                            percent: 0.76,
                                            backgroundColor: Colors.white24,
                                            center: new Text(
                                              "76%",
                                              style:
                                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                                            ),
                                            circularStrokeCap: CircularStrokeCap.round,
                                            progressColor: Color(0xffFFD369),
                                          ),
                                          SizedBox(width: 10,),

                                          //texts
                                          Column(
                                            children: [
                                              Expanded(child: Container()),
                                              Expanded(
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      Text("On-Time Arrival                     ",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 22,
                                                            fontFamily: "noramal"
                                                        ),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Row(
                                                    children: [
                                                      Text("From Feb 20, 2020 to 15 Mar, 2020",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16,
                                                            fontFamily: "noramal"
                                                        ),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(child: Container()),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                //recent log
                                Text("Recent Logs",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontFamily: "noramal"
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        children: [

                                          //texts
                                          Column(
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  children: [
                                                    Text("Wednesday",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 22,
                                                          fontFamily: "noramal"
                                                      ),),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  children: [
                                                    Text("15 March 2020",
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16,
                                                          fontFamily: "noramal"
                                                      ),),
                                                  ],
                                                ),
                                              ),
                                              Expanded(child: Container()),
                                            ],
                                          ),
                                          Expanded(child: Container()),

                                          //icon
                                          Container(
                                            child: Column(
                                              children: [
                                                Expanded(child: Container()),

                                                //pie chart
                                                Container(
                                                  width: 50,
                                                  height: 50,
                                                  child: SfCircularChart(
                                                      series: <CircularSeries>[
                                                        // Render pie chart
                                                        PieSeries<ChartData, String>(
                                                            dataSource: chartData,
                                                            pointColorMapper:(ChartData data,  _) => data.color,
                                                            xValueMapper: (ChartData data, _) => data.x,
                                                            yValueMapper: (ChartData data, _) => data.y
                                                        )
                                                      ]
                                                  )
                                                ),

                                                //time
                                                Text("3:52 Hrs",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: "noramal"
                                                  ),),
                                                Expanded(child: Container()),
                                              ],
                                            )
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      child: Row(
                                        children: [

                                          //texts
                                          Column(
                                            children: [
                                              Expanded(child: Container()),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  children: [
                                                    Text("Tuesday",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 22,
                                                          fontFamily: "noramal"
                                                      ),),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                width: 200,
                                                child: Row(
                                                  children: [
                                                    Text("15 March 2020",
                                                      style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16,
                                                          fontFamily: "noramal"
                                                      ),),
                                                  ],
                                                ),
                                              ),
                                              Expanded(child: Container()),
                                            ],
                                          ),
                                          Expanded(child: Container()),

                                          //icon
                                          Container(
                                              child: Column(
                                                children: [
                                                  Expanded(child: Container()),

                                                  //pie chart
                                                  Container(
                                                      width: 50,
                                                      height: 50,
                                                      child: SfCircularChart(
                                                          series: <CircularSeries>[
                                                            // Render pie chart
                                                            PieSeries<ChartData, String>(
                                                                dataSource: chartData,
                                                                pointColorMapper:(ChartData data,  _) => data.color,
                                                                xValueMapper: (ChartData data, _) => data.x,
                                                                yValueMapper: (ChartData data, _) => data.y
                                                            )
                                                          ]
                                                      )
                                                  ),

                                                  //time
                                                  Text("3:52 Hrs",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontFamily: "noramal"
                                                    ),),
                                                  Expanded(child: Container()),
                                                ],
                                              )
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      )
                  ),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
