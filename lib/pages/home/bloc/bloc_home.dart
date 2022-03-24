import 'package:rxdart/rxdart.dart';

class BlocHome {
  var positionPage = BehaviorSubject<int>();

  void pageChange({index}) {
    positionPage.sink.add(index);
  }
}
