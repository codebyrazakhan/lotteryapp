import 'package:flutter/material.dart';
import 'package:lotteryapp/screens/317sysytem.dart';
import 'package:lotteryapp/screens/Dialog.dart';
import 'package:lotteryapp/screens/Moreinformation.dart';
import 'package:lotteryapp/screens/YorFavorites.dart';
import 'package:lotteryapp/screens/checkYourTicket.dart';
import 'package:lotteryapp/screens/eveneoddbreakdown.dart';
import 'package:lotteryapp/screens/lotteryStatics.dart';
import 'package:lotteryapp/screens/pastresult.dart';
import 'package:lotteryapp/screens/Scratchoffguide.dart';
import 'package:lotteryapp/screens/scanning.dart';
import 'package:lotteryapp/screens/selectyoursatet.dart';
import 'package:lotteryapp/screens/ticketsubmit.dart';
import 'Notifications.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LotteryResult extends StatefulWidget {
  @override
  _LotteryResultState createState() => _LotteryResultState();
}

class _LotteryResultState extends State<LotteryResult> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.only(),
            child: AppBar(
              backgroundColor: Colors.red,
              leading: Transform(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Moreinformation()));
                  },
                  child: Icon(
                    MdiIcons.gamepadCircleOutline,
                    color: Colors.white,
                  ),
                ),
                alignment: FractionalOffset.center,
                transform: new Matrix4.identity()
                  ..rotateZ(135 * 3.1415927 / 180),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Lottery Results"),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectYourState()));
                  },
                  icon: Icon(
                    MdiIcons.menu,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),

                //height: (MediaQuery.of(context).size.height),
                width: (MediaQuery.of(context).size.width),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Notifications()));
                              },
                              child: Icon(
                                Icons.info_outline_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pick 3 Day",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Thursday, 9/3",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: Text(
                              '8',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: Text(
                              '5',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.red,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Next Drawing',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: '  Fri. 9/4 & \$500',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ScartchOffGuide()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Search Result",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PastResult()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.restore,
                                        color: Colors.red,
                                        size: 30,
                                      ),
                                      Text(
                                        "Paste Result",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              YourFavorites()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star_outline,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Favorite Number",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(),
                              GestureDetector(
                                onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TicketNumberSubmit()));
                                },
                                                              child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.tonality,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Hot/ Cold / Overdue",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EvenOddBreakdowmn()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.laptop_mac_outlined,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "More Choices",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DialogScreen()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.trending_up,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Patter Analysis",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => System317()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        MdiIcons.tableColumn,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Lotto System",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LotteryStatics()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        MdiIcons.chartBoxOutline,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Stat Breakdown",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Scanning()));
                                },
                                child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.done,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Saved Number",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                   Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CheckYourTicket()));
                                },
                                                              child: Container(
                                  height: 80,
                                  width: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.online_prediction,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      Text(
                                        "Lotto Prediction",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
