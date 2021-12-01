import 'package:flutter/material.dart';
import 'package:leaveapp/applyforleave.dart';
import 'package:leaveapp/mystats.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [

            //blue background
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
                      alignment: Alignment(1.2, -1.2),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          shape: BoxShape.circle
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment(-1.2, -0.5),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            shape: BoxShape.circle
                        ),
                      ),
                    ),
                ],
              ),
            ),

            //body
            Positioned.fill(
                child: Column(
                  children: [

                    //top body
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.transparent,
                      child: Column(
                        children: [

                          //drawer/home/notification
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 14, right: 14, bottom: 20),
                            child: Row(
                              children: [
                                Builder(
                                  builder: (context) =>
                                  GestureDetector(
                                      child: Image.asset("images/drawer.png", width: 18, height: 16, fit: BoxFit.cover,),
                                      onTap: () => Scaffold.of(context).openDrawer(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 14),
                                  child: Text("Home",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontFamily: "noramal"
                                    ),),
                                ),
                                Expanded(child: Container()),
                                Icon(Icons.notifications, size: 24, color: Colors.white,)
                              ],
                            ),
                          ),

                          //good morning text
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Row(
                              children: [
                                Text("Good Morning, Kevin Durand",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "noramal"
                                ),),
                              ],
                            ),
                          ),

                          //leave dashboard text
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            child: Row(
                              children: [
                                Text("Leave Dashboard",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontFamily: "heading"
                                  ),),
                              ],
                            ),
                          ),

                          //leave count
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Text("4 Leave",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "noramal"
                                      ),),
                                  ],
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    Text("12 Leaves",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: "noramal"
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //leave bar
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                  value:0.336,
                                  backgroundColor: Color(0xfff2f2f2),
                                  color: Color(0xffFDCB6E),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                    //lower body
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffecf0ff),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                        ),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [

                              //yesterday
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Yesterday",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "noramal"
                                            ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 180,
                                          color: Colors.white,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Column(
                                                  children: [

                                                    //applied duration
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/appliedduration.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Applied Duration",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("12 Oct, 2019  to  15 Oct, 2019",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    //reason
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/reason.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Reason",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Having fever from last night",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    //type of leave
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/typeofleave.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Type Of Leave",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Sick Leave",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Align(
                                                alignment: Alignment(1, -0.85),
                                                child: Container(
                                                  width: 90,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                                      color: Color(0xffFDCB6E)
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Expanded(child: Container()),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Row(
                                                          children: [
                                                            Text("Pending",
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 14,
                                                                  fontFamily: "noramal"
                                                              ),),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(child: Container()),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              //22 Aug,  2019
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("22 Aug, 2019",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: "noramal"
                                            ),),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 180,
                                          color: Colors.white,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Column(
                                                  children: [

                                                    //applied duration
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/appliedduration.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Applied Duration",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("22 Aug, 2019  to  24 Aug, 2019",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    //reason
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/reason.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Reason",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Having fever from last night",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    //type of leave
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 60,
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(5),
                                                            child: Image.asset("images/typeofleave.png", width: 30, height: 30, fit: BoxFit.cover,),
                                                          ),
                                                          Column(
                                                            children: [
                                                              Expanded(child: Container()),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Type Of Leave",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 14,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 5,),
                                                              Container(
                                                                width: 250,
                                                                child: Row(
                                                                  children: [
                                                                    Text("Sick Leave",
                                                                      style: TextStyle(
                                                                          color: Colors.black,
                                                                          fontSize: 15,
                                                                          fontFamily: "noramal"
                                                                      ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(child: Container()),

                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Align(
                                                alignment: Alignment(1, -0.85),
                                                child: Container(
                                                  width: 90,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                                      color: Color(0xffFF4880)
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Expanded(child: Container()),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Row(
                                                          children: [
                                                            Text("Rejected",
                                                              style: TextStyle(
                                                                  color: Colors.white,
                                                                  fontSize: 14,
                                                                  fontFamily: "noramal"
                                                              ),),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(child: Container()),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                )
            ),

            //floating button
            Align(
              alignment: Alignment(0,0.95),
              child: GestureDetector(
                child: Container(
                  width: 140,
                  height: 35,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xff5C91F9), Color(0xff0065FF)]
                      ),
                    borderRadius: BorderRadius.circular(17.5),
                  ),
                  child: Center(
                    child: Text("Appy for leave",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "noramal"
                      ),),
                  ),
                ),

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyForLeave()));
                },
              ),
            )
          ],
        ),
      ),

      drawer: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          width: 250,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff5C91F9), Color(0xff0065FF)]
              ),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
          child: Stack(
            children: [

              //background circle
              Align(
                alignment: Alignment(1, -1),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1.3, -0.2),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      shape: BoxShape.circle
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.3, 0.8),
                child: Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      shape: BoxShape.circle
                  ),
                ),
              ),

              //main body
              Positioned.fill(
                child: Column(
                  children: [
                    SizedBox(height: 28,),

                    //dashboard
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Text("Dashboard",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: "noramal",
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(width: 150, height: 1,color: Colors.white12,),
                    ),

                    //my stats
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Text("My Stats",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: "noramal",
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyStats()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(width: 150, height: 1,color: Colors.white12,),
                    ),

                    //apply for leave
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Text("Apply for leave",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontFamily: "noramal",
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyForLeave()));
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Container(width: 150, height: 1,color: Colors.white12,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
