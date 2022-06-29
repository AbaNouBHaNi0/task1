import 'package:flutter/material.dart';

import 'Constants.dart';

class MY_Button extends StatelessWidget {
  final double height;
  final double width;

  final String text;

  final Color color ;

  final double curve;
  final VoidCallback Fun;

  const MY_Button(
      {Key? key,
      required this.height,
      required this.width,
      required this.text,
      required this.Fun,
      this.curve = 20,
      this.color = Colors.redAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 60,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(curve),
      ),
      child: MaterialButton(
        onPressed: Fun,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class TEXTINPUTE extends StatelessWidget {
  final String textName;
  final Icon icon ;
  final TextInputType type;
  final bool pass ;

  const TEXTINPUTE({
    Key? key,
    required this.textName,
    required this.icon,
    required this.type,
    this.pass = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: pass,
      validator: (val) {
        if (val?.length == 0) {
          return "Email cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: type,
      decoration: InputDecoration(

        prefixIcon: icon,
        labelText: textName,
        //icon: Icon(Icons.account_circle_outlined),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(),

          //fillColor: Colors.green
        ),
      ),
    );
  }
}