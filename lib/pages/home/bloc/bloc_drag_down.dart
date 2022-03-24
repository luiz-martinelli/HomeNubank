import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:rxdart/rxdart.dart';

class BlocDragDown {
  // ignore: prefer_typing_uninitialized_variables
  var positionInit;
  double height;
  // ignore: prefer_typing_uninitialized_variables
  var positionEnd;
  double velocity;

  BlocDragDown({this.positionInit, required this.height});

  void changePosition({required double updated}) {
    positionEnd = updated;
    if ((updated + 2.0) > (height * 0.14)) {
      positionUpdated.sink.add((updated / height - 0.13));
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

  double positionAtual() {}
}

var positionUpdated = BehaviorSubject<double>(seedValue: 0.0);
