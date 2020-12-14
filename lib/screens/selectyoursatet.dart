import 'package:flutter/material.dart';

class SelectYourState extends StatefulWidget {
  @override
  _SelectYourStateState createState() => _SelectYourStateState();
}

class _SelectYourStateState extends State<SelectYourState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           iconTheme: IconThemeData(color: Colors.red, size: 10),
           elevation: 0,
           backgroundColor: Colors.white,
        
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
                      "Select your State ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
                   Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
                        labelText: "Search",
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("Alamba", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Alasak", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Arizona", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Arkansas", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("California", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Colorado", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Connecticut", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Delaware", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Florida", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Georgia", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.red,) ,
                  ),
                  Divider(),
                ],
              )
               ],
             ),
           ),
         ),
    );
  }
}
