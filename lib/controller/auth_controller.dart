import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/exports.dart';

class AuthController extends GetxController {
  final _auth = FirebaseAuth.instance;

  var isLoading = false.obs;

  void login(String email, String password) {
    isLoading(true);

    _auth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      isLoading(false);
      return Get.to(() => HomeScreen());
    }).catchError((e) {
      isLoading(false);
      Get.snackbar(
        'Error while Logging into Account',
        '$e',
        borderRadius: 5,
      );
    });
  }

  void signUp(String email, String password) {
    isLoading(true);
    _auth
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      isLoading(false);
      return Get.to(() => HomeScreen());
    }).catchError((e) {
      isLoading(false);
      Get.snackbar(
        'Error while creating Account',
        '$e',
        borderRadius: 5,
      );
    });
  }

  void forgotPassword(String email) {
    isLoading(true);
    _auth.sendPasswordResetEmail(email: email);
    isLoading(false);
    Get.snackbar(
      'Check Your Email',
      'Password reset email has been send to your email',
      borderRadius: 5,
    );
    Get.to(() => LoginScreen());
  }

  void logOut() {
    isLoading(true);
    _auth.signOut();
    isLoading(false);
  }
}
