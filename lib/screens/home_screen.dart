import 'package:flutter/material.dart';
import 'package:vedansh_tech_test/helpers/top_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 30,
                          backgroundImage: AssetImage('images/john.jpg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,  Pino",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        Text(
                          "What do you want to buy?",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              color: Colors.yellow[600],
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
            ),

            Container(), // Required some widget in between to float AppBar

            Positioned(
              // To take AppBar Size only
              top: 170.0,
              left: 10.0,
              right: 10.0,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child:  PreferredSize(
                  preferredSize: AppBar().preferredSize,
                  child: SafeArea(
                    child: Container(
                     // color: Colors.red,
                      child: AppBar(
                        leading: Icon(
                          Icons.search,
                            size: 30.0,
                            color: Colors.yellow[800],
                        ),
                        primary: false,
                        title: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                                //color: Colors.grey
                              ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        elevation: 8,
                        backgroundColor: Colors.white,
                       // leading: Icon(Icons.menu, color: Colors.black,),
                      ),
                    ),
                  ),
                ),
                ),
              ),

            Positioned(
              // To take AppBar Size only
              top: 260.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),

                  child: CategoriesRow()),
            ),
            Positioned(
              // To take AppBar Size only
              top: 350.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),

                 // child: CategoriesRow()
                ),
            ),
          ]),
        ),
      ),
    );
  }
}
