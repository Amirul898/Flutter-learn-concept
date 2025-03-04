import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets.dart/ui_helper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            UiHelper.coustomButton(callback: () {}, buttonname: "add NAme"),
          ],
        ),
      ),
    );
  }
}
