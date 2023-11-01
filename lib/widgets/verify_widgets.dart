import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inova_app/constants.dart';
import 'package:pinput/pinput.dart';

import 'custom_button.dart';


class VerifyMobile extends StatelessWidget {
  const VerifyMobile({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Text('Now, Verify your\nmobile number',style: GoogleFonts.spaceGrotesk(textStyle: const TextStyle(color: Color(0xff23783B),fontSize: 26),fontWeight: FontWeight.w900)),
                SizedBox(height: 20,),
                const Text('Change Mobile Number?', style: TextStyle(fontSize: 16,color: Color(0xff0042FF),decoration:  TextDecoration.underline,decorationColor: Color(0xff0042FF)),)
              ],
            ),
            Column(
              children: [
                Pinput(
                  validator: (s) {
                    return s == '2222' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                SizedBox(height: 10,),
                RichText(
                  text: const TextSpan(
                    text: 'Enter the confirmation code we just send you in a text message. Don\'t receive a code? ',
                    style: TextStyle(color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),

                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: CustomGreenButton(
                text: 'Continue',
                onTaps: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const VerifyMobile()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
