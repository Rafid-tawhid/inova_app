import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inova_app/constants.dart';
import 'package:inova_app/widgets/verify_widgets.dart';

import 'custom_button.dart';

class MobileNumberWidgets extends StatelessWidget {
   MobileNumberWidgets({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Text('Lets start with \nmobile number',style: GoogleFonts.spaceGrotesk(textStyle: TextStyle(color: myColors.darkGreen,fontSize: 26),fontWeight: FontWeight.w900)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          '+880',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'XXXXXXXXXX',
                            contentPadding: EdgeInsets.only(left: 16),
                            border: InputBorder.none, // Remove the default border
                            focusedBorder: InputBorder.none, // Remove the border when the TextField is focused
                            enabledBorder: InputBorder.none, // Remove the border when the TextField is enabled
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                CustomGreenButton(
                  text: 'Continue',
                  onTaps: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const VerifyMobile()));
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('If you don\'t have any account it will be proceed to create new account!',style: TextStyle(color: Colors.black87),),
            )
          ],
        ),
      ),
    );
  }
}
