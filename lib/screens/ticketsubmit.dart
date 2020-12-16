import 'package:flutter/material.dart';
import 'package:lotteryapp/screens/lotteryresult.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';

InputDecoration inputFormat(Color fillColor) {
  return new InputDecoration(
    fillColor: fillColor,
    filled: true,
    border: new OutlineInputBorder(
        borderRadius: new BorderRadius.circular(20.0),
        borderSide: new BorderSide(width: 0.0, color: fillColor)),
    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
  );
}

TextStyle textStyle(double fontSize, Color color, FontWeight fontWeight) {
  return new TextStyle(
      color: color,
      decoration: TextDecoration.none,
      fontSize: fontSize,
      fontWeight: fontWeight);
}

Container pinBox(
    double width,
    TextEditingController con,
    FocusNode focusNode,
    FocusNode nextFocusNode,
    Color boxColor,
    Color textColor,
    BuildContext context,
    bool show) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 3.0),
    width: width,
    child: new TextField(
      decoration: inputFormat(boxColor),
      controller: con,
      textAlign: TextAlign.center,
      cursorColor: boxColor,
      maxLines: 1,
      // onChanged: (text) {
      //   if (text.length > 1) {
      //     con.text = text.substring(text.length - 1);
      //   }
      //   if (nextFocusNode != null) {
      //     FocusScope.of(context).requestFocus(nextFocusNode);
      //   }
      // },
      obscureText: !show,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      autofocus: false,
      style: textStyle(30.0, textColor, FontWeight.bold),
    ),
  );
}

List<Widget> pinBoxs(double width, List<TextEditingController> cons,
    Color boxColor, Color textColor, BuildContext context, bool show) {
  List<Widget> boxs = new List();
  List<FocusNode> focusNodes = new List();
  focusNodes.add(new FocusNode());
  for (int i = 0; i < cons.length; i++) {
    focusNodes.add(new FocusNode());
    if (i == cons.length - 1) {
      focusNodes[i + 1] = null;
    }
    boxs.add(pinBox(width, cons[i], focusNodes[i], focusNodes[i + 1], boxColor,
        textColor, context, show));
  }
  return boxs;
}

class TicketNumberSubmit extends StatefulWidget {
  @override
  _TicketNumberSubmitState createState() => _TicketNumberSubmitState();
}

class _TicketNumberSubmitState extends State<TicketNumberSubmit> {
  List<TextEditingController> controllers = <TextEditingController>[
    new TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 300,
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Enter Your",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Number below",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: PinPut(
                          inputFormatters: [],
                          fieldsCount: 3,
                          onSubmit: (String pin) => _showSnackBar(pin, context),
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          selectedFieldDecoration: _pinPutDecoration,
                          followingFieldDecoration: _pinPutDecoration.copyWith(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => _pinPutFocusNode.requestFocus(),
                    child: const Text('Focus'),
                  ),
                  FlatButton(
                    onPressed: () => _pinPutFocusNode.unfocus(),
                    child: const Text('Unfocus'),
                  ),
                  FlatButton(
                    onPressed: () => _pinPutController.text = '',
                    child: const Text('Clear All'),
                  ),
                ],
              ),

              // Container(
              //   color: Colors.white70,
              //   height: 350,
              //   width: (MediaQuery.of(context).size.width * 0.8),
              //   child:PinPut(
              //           fieldsCount: 3,
              //           onSubmit: (String pin) => _showSnackBar(pin, context),
              //           focusNode: _pinPutFocusNode,
              //           controller: _pinPutController,
              //           submittedFieldDecoration: _pinPutDecoration.copyWith(
              //             borderRadius: BorderRadius.circular(20.0),
              //           ),
              //           selectedFieldDecoration: _pinPutDecoration,
              //           followingFieldDecoration: _pinPutDecoration.copyWith(
              //             borderRadius: BorderRadius.circular(5.0),
              //             border: Border.all(
              //               color: Colors.deepPurpleAccent.withOpacity(.5),
              //             ),
              //           ),
              //         ),
              //       ),
              // child: Container(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "Enter Your",
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 20),
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Text(
              //             "Number below",
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           CircleAvatar(
              //             backgroundColor: Colors.red,
              //             radius: 25,
              //             child: Text(
              //               "3",
              //               style: TextStyle(
              //                   color: Colors.white,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           ),
              //           SizedBox(
              //             width: 5,
              //           ),
              //           CircleAvatar(
              //             backgroundColor: Colors.grey[300],
              //             radius: 25,
              //             child: Text(
              //               "__",
              //               style: TextStyle(
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           ),
              //           SizedBox(
              //             width: 5,
              //           ),
              //           CircleAvatar(
              //             backgroundColor: Colors.grey[300],
              //             radius: 25,
              //             child: Text(
              //               "__",
              //               style: TextStyle(
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           )
              //         ],
              //       )
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        elevation: 5.0,
                        height: 50,
                        minWidth: 200,
                        color: Colors.red,
                        child: Text('Submit',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LotteryResult()));
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
