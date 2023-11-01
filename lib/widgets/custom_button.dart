import 'package:flutter/material.dart';
import 'package:inova_app/constants.dart';

class CustomGreenButton extends StatelessWidget {
  final String text;
  final Function onTaps;

  CustomGreenButton({required this.text, required this.onTaps});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        onTaps();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: myColors.green, borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(vertical: 34),
        width: MediaQuery.of(context).size.width,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}