import 'package:flutter/material.dart';

class Custombutton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const Custombutton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  _CustombuttonState createState() => _CustombuttonState();
}

class _CustombuttonState extends State<Custombutton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            "${widget.text}",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
