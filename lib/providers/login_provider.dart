import 'package:jadu_imd/providers/extensions.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'login_provider.g.dart';

// This is the class used by rest of your codebase
class LoginViewModel = _LoginViewModel with _$LoginViewModel;

// The store-class
abstract class _LoginViewModel with Store {
  @observable
  bool emailValid = false;

  @observable
  bool passwordValid = false;

  @observable
  String email = "";

  @observable
  String password = "";

  @action
  void onEmailIdChange(String _email) {
    email = _email;
    emailValid = email.isValidEmail;
  }

  @action
  void onPasswordChange(String _password) {
    password = _password;
    passwordValid = password.isValidPassword;
  }

  @computed
  bool get valid => emailValid && passwordValid;
}