import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inova_app/constants.dart';

import 'custom_button.dart';

class OtpWidgets extends StatelessWidget {
   OtpWidgets({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 7,
          ),
           Text('Lets start with \nmobile number',style: GoogleFonts.spaceGrotesk(textStyle: TextStyle(color: myColors.darkGreen,fontSize: 26),fontWeight: FontWeight.w900)),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: .5
                )
              ),
              prefixText: '+880',
              prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          CustomGreenButton(
            text: 'Continue',
            onTaps: (){

            },
          ),
          Text('If you don\'t have any account it will be proceed to create new account!')
        ],
      ),
    );
  }
}
