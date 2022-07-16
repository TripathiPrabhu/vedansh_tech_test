import 'package:flutter/material.dart';
class CustomBarWidget extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: 160.0,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.yellow[600],
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}