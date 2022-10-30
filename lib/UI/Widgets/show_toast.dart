// ignore_for_file: constant_identifier_names

import '../../Resources/main_imports.dart';

showSnackBar(context, String text, ToastStates state) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style:
            TextStyle(color: ColorManager.wight, fontWeight: FontWeight.w700),
      ),
      behavior: SnackBarBehavior.floating,
      shape: const StadiumBorder(),
      backgroundColor: chooseToastColor(state),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      // duration: const Duration(milliseconds:500 ),
    ),
  );
}

enum ToastStates { SUCCESS, ERROR, WARNING }

//================chooseToastColor===============================================

Color? color;

Color? chooseToastColor(ToastStates state) {
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}
