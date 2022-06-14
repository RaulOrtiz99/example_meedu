import 'package:example_meedu/app/ui/pages/counter/login/controller/login_controller.dart';
import 'package:example_meedu/app/ui/pages/counter/login/controller/login_state.dart';
import 'package:flutter_meedu/meedu.dart';

final loginProvider = StateProvider<LoginController, LoginState>(
  (_) => LoginController(),
);
