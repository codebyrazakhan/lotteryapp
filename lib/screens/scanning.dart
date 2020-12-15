import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class Scanning extends StatefulWidget {
  @override
  _ScanningState createState() => _ScanningState();
}

class _ScanningState extends State<Scanning> {
  GlobalKey qrKey = GlobalKey();
  var qrText = "";
  QRViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: QRView(
              key: qrKey,
              onQRViewCreated: onQRViewCraeted,
              overlay: QrScannerOverlayShape(
                borderRadius: 10,
                borderColor: Colors.white,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: 300,
              ),
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //       color: Colors.transparent,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.end,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: RaisedButton(
          //                   onPressed: () {},
          //                   color: Colors.red,
          //                   child: Text(
          //                     "Finish",
          //                     style:
          //                         TextStyle(color: Colors.white, fontSize: 20),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //           Center(
          //             child: Text("Scan Text : $qrText"),
          //           ),
          //         ],
          //       )),
          // )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void onQRViewCraeted(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData;
      });
    });
  }
}
