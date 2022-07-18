import 'package:flutter/material.dart';
import 'package:vedansh_tech_test/helpers/MyButton.dart';
import 'package:vedansh_tech_test/screens/signUp_screen.dart';

import 'login-screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )),
                  Center(
                    child: Text(
                      'Automatic identity verification which enables you \n to verify your identity',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Image(image: AssetImage('images/welcomeimage.jpg')),
                  MyButton(
                    buttonText: 'Login',
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login_screen');

                    },
                  ),
                  MyButton(
                    buttonText: 'Sign up',
                    backgroundColor: Colors.white,
                    onPressed: () {
                      //Navigator.pushNamed(context, '/signup_screen');
                      Navigator.of(context).pushNamed('/signup_screen');
                    },
                  ),
                ],
              )),
        ));
  }
}

//
// class WelcomScreen extends StatefulWidget {
//   const WelcomScreen({Key? key}) : super(key: key);
//
//   @override
//   State<WelcomScreen> createState() => _WelcomScreenState();
// }
//
// class _WelcomScreenState extends State<WelcomScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                       Text(
//                         'Welcome',
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                 Text(
//                   'Automatic identity verification which enables you \n to verify your identity',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                    Image(image: AssetImage(''))
//
//
//               ],
//       ),
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }
