import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.amber,
          height: 200,
          child: Row(
            children: <Widget>[
              Image.network(''),
              SizedBox(
                width: 10,
              ),
              Text('Luiz',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
