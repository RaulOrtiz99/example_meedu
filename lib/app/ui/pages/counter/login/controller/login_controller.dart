import 'package:example_meedu/app/ui/pages/counter/login/controller/login_state.dart';
import 'package:flutter_meedu/meedu.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController() : super(LoginState.initialState);

  void onEmailChanged(String text) {
    state = state.copyWith(email: text);
  }

  void onPasswordChanged(String text) {
    state = state.copyWith(password: text);
  }

  Future<void> submit() async {
    state = state.copyWith(loading: true);
    await Future.delayed(const Duration(seconds: 1));

    state = state.copyWith(loading: false);
  }
}
