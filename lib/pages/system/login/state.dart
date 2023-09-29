import 'package:get/get.dart';

class LoginState {
  // title
  final _title = "".obs;
  final _count = 0.obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  get count => _count.value;
  add() {
    _count.value++;
  }
}
