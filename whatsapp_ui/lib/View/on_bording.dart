import 'package:flutter/material.dart';
import 'package:whatsapp_ui/View/log_in_view.dart';
import 'package:whatsapp_ui/widgets.dart/ui_helper.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/photo/wlcomeImage.png",
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 40),
            Text(
              "Welcome to WhatsApp",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.regularText(text: "Read out  ", textcolor: null),

                    InkWell(
                      onTap: () {},
                      child: UiHelper.regularText(
                        text: "Privacy Policy.",
                        textcolor: Color(0xff0C42CC),
                      ),
                    ),

                    UiHelper.regularText(
                      text: "Tap “Agree and continue”",
                      textcolor: null,
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.regularText(
                      text: "to accept the",
                      textcolor: null,
                    ),
                    InkWell(
                      onTap: () {},
                      child: UiHelper.regularText(
                        text: " Teams of Service.",
                        textcolor: Color(0xff0C42CC),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      ),

      floatingActionButton: UiHelper.coustomButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogInView()),
          );
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
