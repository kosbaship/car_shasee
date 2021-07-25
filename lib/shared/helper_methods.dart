import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'colors.dart';

// do not forget to define the key
// in the screen class
// pass the key to the scaffold
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    {@required GlobalKey<ScaffoldState>? scaffoldKey,
    @required String? massage}) {
  return scaffoldKey!.currentState!.showSnackBar(SnackBar(
    content: Text(massage!),
    duration: Duration(seconds: 3),
  ));
}

// import fluttertoast package
// import easy_localization package
Future<bool?> showToast(
    {@required BuildContext? context,
    @required String? massage,
    ToastGravity position = ToastGravity.BOTTOM,
    Toast toastLength = Toast.LENGTH_SHORT}) {
  return Fluttertoast.showToast(
      msg: '  $massage  ',
      toastLength: toastLength,
      gravity: position,
      backgroundColor: Color(mainTextBlackColor),
      textColor: Colors.white,
      fontSize: MediaQuery.of(context!).size.width * 0.05);
}
