
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
TextEditingController emailcontroller = new TextEditingController();

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
          height: 20,
          width: 40,
          ),
          TextField(
            controller: emailcontroller,
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'enter anything here'
            )
            
          ),
          RaisedButton(
            onPressed: (){
              Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
    );
            },
            child: Text("go"),
            color: Colors.black12,
          )

        ],
      ),
    );
  }
}

