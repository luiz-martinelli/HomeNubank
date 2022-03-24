import 'package:flutter/material.dart';

class CardBottom extends StatelessWidget {
  const CardBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: const Color.fromRGBO(145, 64, 169, 1.0)),
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.26,
            maxWidth: MediaQuery.of(context).size.width * 0.26,
            maxHeight: MediaQuery.of(context).size.height * 0.15),
        child: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Positioned(
              left: 1.0,
              child: Icon(
                Icons.perm_identity,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            const Positioned(
              bottom: 2.0,
              left: 3.0,
              child: Text(
                "Indicar\namigos",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
