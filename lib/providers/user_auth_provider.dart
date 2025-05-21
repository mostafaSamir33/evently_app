import 'package:evently/common/services/firebase_services.dart';
import 'package:evently/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class UserAuthProvider extends ChangeNotifier {
  UserModel? userModel;
  bool loading = false;

  Future<String?> userLogin(
      {required String email, required String password}) async {
    loading = true;
    notifyListeners();
    try {
      userModel =
          await FirebaseServices.loginUser(email: email, password: password);
      loading = false;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      loading = false;
      notifyListeners();
      String errorMessage = getMessageFromErrorCode(e);
      return errorMessage;
    } on FirebaseException catch (e) {
      loading = false;
      notifyListeners();
      return e.message;
    } catch (e) {
      loading = false;
      notifyListeners();
      return e.toString();
    }
    return null;
  }

  Future<String?> userSignup(
      {required String email,
      required String password,
      required String name}) async {
    loading = true;
    notifyListeners();
    try {
      userModel = await FirebaseServices.registerUser(
          email: email, password: password, name: name);
    } on FirebaseAuthException catch (e) {
      loading = false;
      notifyListeners();
      String errorMessage = getMessageFromErrorCode(e);
      return errorMessage;
    } on FirebaseException catch (e) {
      loading = false;
      notifyListeners();
      return e.message;
    } catch (e) {
      loading = false;
      notifyListeners();
      return e.toString();
    }
    return null;
  }

  Future<void> getUser() async {
    userModel = await FirebaseServices.getUserInfo(
        FirebaseAuth.instance.currentUser!.uid);
    notifyListeners();
  }

  String getMessageFromErrorCode(FirebaseAuthException e) {
    switch (e.code) {
      case "ERROR_EMAIL_ALREADY_IN_USE":
      case "account-exists-with-different-credential":
      case "email-already-in-use":
        return "Email already used. Go to login page."; //TODO:localization
      case "ERROR_WRONG_PASSWORD":
      case "wrong-password":
        return "Wrong email/password combination."; //TODO:localization
      case "ERROR_USER_NOT_FOUND":
      case "user-not-found":
        return "No user found with this email."; //TODO:localization
      case "ERROR_USER_DISABLED":
      case "user-disabled":
        return "User disabled."; //TODO:localization
      case "ERROR_TOO_MANY_REQUESTS":
      case "operation-not-allowed":
        return "Too many requests to log into this account."; //TODO:localization
      case "ERROR_OPERATION_NOT_ALLOWED":
      case "operation-not-allowed":
        return "Server error, please try again later."; //TODO:localization
      case "ERROR_INVALID_EMAIL":
      case "invalid-email":
        return "Email address is invalid."; //TODO:localization
      default:
        return "Login failed. Please try again."; //TODO:localization
    }
  }
}
