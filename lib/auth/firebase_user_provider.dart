import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LifeguardKHFirebaseUser {
  LifeguardKHFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LifeguardKHFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LifeguardKHFirebaseUser> lifeguardKHFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LifeguardKHFirebaseUser>(
      (user) {
        currentUser = LifeguardKHFirebaseUser(user);
        return currentUser!;
      },
    );
