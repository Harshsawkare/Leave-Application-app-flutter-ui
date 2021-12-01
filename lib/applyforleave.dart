import 'package:flutter/material.dart';

class ApplyForLeave extends StatefulWidget {
  const ApplyForLeave({Key? key}) : super(key: key);

  @override
  _ApplyForLeaveState createState() => _ApplyForLeaveState();
}

class _ApplyForLeaveState extends State<ApplyForLeave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff5C91F9), Color(0xff0065FF)]
            )
        ),
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
                      Text("January 2019 ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: "heading"
                        ),),
                      Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white, size: 20),
                    ],
                  ),
                  onTap: () => Navigator.pop(context)
              ),
            ),

            Expanded(child: Image.asset("images/calender.png")),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: BoxDecoration(
                  color: Color(0xffecf0ff),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [

                    //types of leaves
                    Row(
                      children: [
                        Text("Types of Leaves",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "noramal"
                          ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text("Unpaid Leaves",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "noramal"
                              ),),
                            Expanded(child: Container()),
                            Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black, size: 20),

                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),

                    //reason
                    Row(
                      children: [
                        Text("Reason",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "noramal"
                          ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Text("Type your reason here...",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: "noramal"
                                  ),),
                              ],
                            ),

                            Expanded(child: Container()),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),

                    //button
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xff5C91F9), Color(0xff0065FF)]
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Apply for Leave",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "noramal"
                          ),),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );;
  }
}
