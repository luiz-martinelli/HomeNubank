import 'package:flutter/material.dart';
import 'package:nubank/pages/widgets/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: const <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
