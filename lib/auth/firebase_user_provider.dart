import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CoffeshopFirebaseUser {
  CoffeshopFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CoffeshopFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CoffeshopFirebaseUser> coffeshopFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CoffeshopFirebaseUser>(
      (user) {
        currentUser = CoffeshopFirebaseUser(user);
        return currentUser!;
      },
    );
