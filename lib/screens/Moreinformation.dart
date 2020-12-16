import 'package:flutter/material.dart';
import 'package:lotteryapp/screens/lotteryresult.dart';
import 'package:lotteryapp/screens/signUpscreen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Moreinformation extends StatefulWidget {
  @override
  _MoreinformationState createState() => _MoreinformationState();
}

class _MoreinformationState extends State<Moreinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.red, size: 25),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Sign up',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' for Lotto Giveaway!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "More Information",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Number Analysis",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Hot/Cold/Overdue Number",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Hot Number by Position",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Latest Prediction",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pair Analysis",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Front/Middke/Back Pair Analysis",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Double & Triple Analysis",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pattern Analysis & States",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Even/Odd Breakdown",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(
                            MdiIcons.informationOutline,
                            color: Colors.red,
                            size: 25,
                          ),
                          title: Text(
                            "Double & Triple Analysis",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  elevation: 0,
                  minWidth: 300,
                  height: 50,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Upgade To Premium & Remove Ads',
                        style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LotteryResult()));
                  },
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
