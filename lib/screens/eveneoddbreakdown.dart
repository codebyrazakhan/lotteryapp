import 'package:flutter/material.dart';

class EvenOddBreakdowmn extends StatefulWidget {
  @override
  _EvenOddBreakdowmnState createState() => _EvenOddBreakdowmnState();
}

class _EvenOddBreakdowmnState extends State<EvenOddBreakdowmn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red, size: 25),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Even/Odd Breakdowm",
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
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.red,
                    ),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Filter:',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Draws:16',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ])),
                ],
              ),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Odds",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "22(49%)",
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Evens",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "23(51%)",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Lows",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "22(49%)",
                              style: TextStyle(
                                  color: Colors.purple[500],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Highs",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "23(51%)",
                              style: TextStyle(
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "E-E-E",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1(7%)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "E-E-O",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "5(33%)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "E-O-O",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1(7%)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "E-O-E",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "17(%)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "O-O-O",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "3(20%)",
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "O-O-E",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "0(0%)",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "O-E-E",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "3(20%)",
                              style: TextStyle(
                                  color: Colors.purple[500],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "O-E-O",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1(7%)",
                              style: TextStyle(
                                  color: Colors.green[800],
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              "Hide Info",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFF6F4F4),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text(
                              "More Info",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
               
                ],
                
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget listTile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: Text(
            "9/3",
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    "E",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    "E",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "O",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
