import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/auth/sign_in.dart';
import '../screens/home/home_screen.dart';
import '../utilities/firebase_services.dart';
import '../widgets/feedback.dart';

class Authcontroller extends GetxController {
  late FirebaseAuth auth;

  final user = Rxn<User>();

  late Stream<User?> authStateChanges;

  @override
  void onReady() {
    initializer();
    super.onReady();
  }

  Future<void> initializer() async {
    auth = FirebaseAuth.instance;
    authStateChanges = auth.authStateChanges();

    // checking if the current user is registered or exists
    authStateChanges.listen((User? currentUser) {
      user.value = currentUser;
    });
  }

  // Validating details before sign in
  bool validateSignIn(String email, String pswd) {
    if (email.isEmpty) {
      UserFeedBack.showErrorSnackBar('Email is empty');
      return false;
    } else if (!(email.contains('@') && email.contains('.com'))) {
      UserFeedBack.showErrorSnackBar('Invalid Email');
      return false;
    } else if (pswd.isEmpty) {
      UserFeedBack.showErrorSnackBar(
          'Password field is empty, please supply the password');
      return false;
    } else if (pswd.length < 8) {
      UserFeedBack.showErrorSnackBar('Password must be atleast 8 characters');
      return false;
    } else {
      print("Returned True");
      return true;
    }
  }

  // Validating details before registration
  bool validateSignUp(
      String email, String pswd, String pswd2, String username) {
    if (email.isEmpty) {
      UserFeedBack.showErrorSnackBar('Email is empty');
      return false;
    } else if (!(email.contains('@') && email.contains('.com'))) {
      UserFeedBack.showErrorSnackBar('Invalid Email');
      return false;
    } else if (username.isEmpty) {
      UserFeedBack.showErrorSnackBar('Username field is empty');
      return false;
    } else if (username.length > 15) {
      UserFeedBack.showErrorSnackBar(
          'Your username should not exceed 15 characters');
      return false;
    } else if (pswd.isEmpty) {
      UserFeedBack.showErrorSnackBar(
          'Password field is empty, please supply the password');
      return false;
    } else if (pswd.length < 8) {
      UserFeedBack.showErrorSnackBar('Password must be atleast 8 characters');
      return false;
    } else if (!(pswd == pswd2)) {
      UserFeedBack.showErrorSnackBar(
          'Password mismatch. Confirm your password !');
      return false;
    } else {
      print("Returned True");
      return true;
    }
  }

  // A function which registers a new user in our app (with email & password)
  Future<void> registerUser(
      String suppliedEmail, String suppliedPassword, String uName) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: suppliedEmail, password: suppliedPassword);

      await userReference.doc(suppliedEmail.toLowerCase()).set({
        'email': suppliedEmail.toLowerCase(),
        'username': uName,
        'image': '',
        'date_registered': DateTime.now()
      });

      // if successful
      UserFeedBack.showSuccessSnackBar(
          'Dear ${uName.toUpperCase()}, you have been registered successfully');

      goToLoginScreen();
    } on FirebaseAuthException catch (e) {
      UserFeedBack.showErrorSnackBar(e.message!);
    }
  }

  // A function which logs in a user in our app (with email & password)
  Future<void> loginUser(String suppliedEmail, String suppliedPassword) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: suppliedEmail, password: suppliedPassword);

      // if successful
      UserFeedBack.showSuccessSnackBar('Login Successful !');

      goToHomeScreen();
    } on FirebaseAuthException catch (e) {
      UserFeedBack.showErrorSnackBar(e.message!);
    }
  }

  // A function which logs out a user
  Future<void> logoutUser() async {
    try {
      await auth.signOut();
      UserFeedBack.showSuccessSnackBar('Logout successful !');
      goToLoginScreen();
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  // A function which navigates the user to the login screen
  void goToLoginScreen() {
    Get.offAllNamed(SignInScreen.routeName);
  }

  // A function which navigates the user to the home screen
  void goToHomeScreen() {
    Get.offAllNamed(HomeScreen.routeName);
  }

  // A function that returns the details of the currently loggedIn user
  User? currentUserDetails() {
    user.value = auth.currentUser;
    return user.value;
  }

  // A function which checks if a user is loggedIn or not
  bool isUserLoggedIn() {
    return auth.currentUser != null;
  }

  // Function which creates a user in the fireStore DB when registration is done
  // saveUserInFireStore(String email){

  //   UserModel userModel = UserModel(
  //     email: email,
  //     first: '',
  //     lastName: '',
  //     phoneNumber: '',
  //     profileImage: '',
  //     address: '',
  //     dateRegistered:  DateFormat.yMd().add_jm().format(DateTime.now()), // eg 1/9/2021 2AM
  //   );

  //   // serializing it to Json and sending it to user collection in fireStore
  //   userRef.doc(email).set(userModel.toJson());

  // }

}
