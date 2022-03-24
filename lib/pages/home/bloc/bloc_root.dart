import 'package:rxdart/rxdart.dart';

class BlocRoot {
  var selectPage = BehaviorSubject<bool>;
  bool scroll;

  var selectPage;

  BlocRoot() {
    scroll = false;
  }
}
