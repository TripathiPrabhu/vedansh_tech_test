import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  String? buttonText;
  Color? backgroundColor;
  VoidCallback onPressed;
  MyButton({required this.buttonText, required this.backgroundColor, required this.onPressed});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        color: Colors.white,
          height: 50,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(

            child: Text('${widget.buttonText}',
            style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(widget.backgroundColor),
              //  foregroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                overlayColor: MaterialStateProperty.all(Colors.yellowAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        side: BorderSide(color: Colors.black)
                    )
                )
            ),
            onPressed: widget.onPressed,
          )
      ),
    );
  }
}
