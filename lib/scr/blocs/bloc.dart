import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // ADD DATA TO SINK
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  // ADD DATA TO STREAM
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      CombineLatestStream.combine2(email, password, (a, b) => true);

  submit() {
    final vaildEmail = _email.value;
    final vaildPassword = _password.value;
    print("Email = $vaildEmail");
    print("Password = $vaildPassword");

  }

  dispose() {
    _email.close();
    _password.close();
  }
}
