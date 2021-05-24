import 'package:appetit/Log%20In/AuthProviderBase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class _AndroidAuthProvider implements AuthProviderBase {
  @override
  Future<FirebaseApp> initialize() async {
    return await Firebase.initializeApp(
        name: "Appetit",
        options: FirebaseOptions(
          apiKey: "AIzaSyB952dC7KzEPQKzJi_XOHO8wdUzal33a24",
          authDomain: "appetit-sajat.firebaseapp.com",
          projectId: "appetit-sajat",
          storageBucket: "appetit-sajat.appspot.com",
          messagingSenderId: "844315765970",
          appId: "1:844315765970:android:d906799b3cb136b129110b",
          measurementId: "G-QXYX9ST2W0",
        ));
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount googleUser =
        await GoogleSignIn().signIn() as GoogleSignInAccount;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // @override
  // Future<UserCredential> signInWithFacebook() async {
  //   final AccessToken result =
  //       await FacebookAuth.instance.login() as AccessToken;
  //
  //   final facebookAuthCredential =
  //       FacebookAuthProvider.credential(result.token);
  //
  //   return await FirebaseAuth.instance
  //       .signInWithCredential(facebookAuthCredential);
  // }
}

class AuthProvider extends _AndroidAuthProvider {}
