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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 30,
                            backgroundImage: AssetImage('images/john.jpg'),
                          ),
                          IconButton( onPressed: () {  },
                            icon: Icon(Icons.menu, color: Colors.white,size: 30,),
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

              Container(
              //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              ), // Required some widget in between to float AppBar

      Stack( children: [
        Positioned(
        // To take AppBar Size only
        top: 180.0,
        left: 20.0,
        right: 20.0,
        child: Container(
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.search,
              color: Colors.yellow[800],
            ),
            primary: false,
            title: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            actions: <Widget>[ // IconButton(icon: Icon(Icons.notifications, color: Colors.red[800]),
              // onPressed: () {},)
            ],
          ),
        ),
      ),
        Positioned(
          // To take AppBar Size only
          top: 260.0,
          left: 2.0,
          right: 2.0,
          child: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: CategoriesRow()
          ),
        ),
      ]
    ),
            ]
    ),
    ),
    );
  }
}
