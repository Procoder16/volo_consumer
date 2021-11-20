import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
    Widget navigate,
    String toastMessage,
  ) async {
    final action = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
          content: Text(
            body,
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(DialogsAction.cancel);
              },
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigate,
                  ),
                );
                Fluttertoast.showToast(
                  msg: toastMessage,
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16,
                );
              },
              child: Text(
                'Confirm',
                style: TextStyle(fontSize: 18, color: Colors.pink),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}
