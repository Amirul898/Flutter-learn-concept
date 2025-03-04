import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets.dart/ui_helper.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.hedingText(text: "Enter your phone number"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UiHelper.regularText(
              text: "WhatsApp will need to verify your phone",
              textcolor: null,
            ),

            UiHelper.regularText(
              text: "number. Carrier charges may apply.",
              textcolor: null,
            ),

            UiHelper.regularText(
              text: " What’s my number?",
              textcolor: Color(0xff00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.coustomButton(
        callback: () {},
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
