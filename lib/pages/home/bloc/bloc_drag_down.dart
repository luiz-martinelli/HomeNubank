import 'dart:async';

import 'package:rxdart/rxdart.dart';

class BlocDragDown {
  var positionInit;
  double height;

  var positionEnd;

  BlocDragDown({this.positionInit, required this.height});

  void changePosition({required double updated}) {
    positionEnd = updated;
    if ((updated + 2.0) > (height * 0.14)) {
      positionUpdated;
    }
  }

  void jumptoBottom() {
    print("positionEnd:$positionEnd e height: ${height * 0.5}");

    if (positionEnd > height * 0.2) {
      Timer.periodic(const Duration(milliseconds: 150), (Timer t) {
        print("Timer");
        if (positionEnd >= height) {
          t.cancel();
        } else {
          changePosition(updated: (positionEnd + 1.0));
        }
      });
    }
  }
}

var positionUpdated = BehaviorSubject<double>;
