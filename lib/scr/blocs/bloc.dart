import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  // ADD DATA TO SINK
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
  // ADD DATA TO STREAM
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      CombineLatestStream.combine2(email, password, (a, b) => true);

  dispose() {
    _email.close();
    _password.close();
  }
}
