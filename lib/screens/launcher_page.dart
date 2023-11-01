import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inova_app/constants.dart';

import '../widgets/custom_button.dart';
import '../widgets/otp_widgets.dart';

class LauncherPage extends StatelessWidget {
  static const String routeName = '/';
  const LauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                Text(
                  'USE IT',
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: const TextStyle(
                        fontSize: 70,
                        height: 1,
                        color: myColors.green,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Text('AND',
                    style: GoogleFonts.spaceGrotesk(
                      textStyle: const TextStyle(
                          fontSize: 70,
                          height: 1,
                          color: myColors.darkGreen,
                          fontWeight: FontWeight.w900),
                    )),
                Text('REPEAT!',
                    style: GoogleFonts.spaceGrotesk(
                      textStyle: const TextStyle(
                          fontSize: 70,
                          height: 1,
                          color: myColors.green,
                          fontWeight: FontWeight.w900),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('invo',
                    style: GoogleFonts.spaceGrotesk(
                        textStyle: const TextStyle(
                            fontSize: 55, color: myColors.green),
                        fontWeight: FontWeight.w700)),
                Text('app',
                    style: GoogleFonts.spaceGrotesk(
                        textStyle: const TextStyle(
                            fontSize: 55, color: myColors.darkGreen),
                        fontWeight: FontWeight.w700)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'By clicking ',
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Continue',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' you\'re agreed to our ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms&Conditions',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomGreenButton(
                  text: 'Continue with Login',
                  onTaps: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpWidgets()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


