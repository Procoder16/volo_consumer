import 'package:flutter/material.dart';
import 'package:volo/screens/homescreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:volo/models/loginPageTextField.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'images/logo1.png',
                  ),
                  height: 200,
                ),
                SizedBox(
                  height: 50,
                ),
                LoginPageTextField(
                  emailController,
                  'Enter your email address',
                  false,
                ),
                SizedBox(
                  height: 10,
                ),
                LoginPageTextField(
                  passwordController,
                  'Enter the password',
                  true,
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  color: Colors.pink,
                  onPressed: () {
                    if ((emailController.text == 'abc@gmail.com') &&
                        passwordController.text == '123456') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                      Fluttertoast.showToast(
                        msg: "Logged in Successfully",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    } else if (emailController.text == '' ||
                        passwordController.text == '') {
                      Fluttertoast.showToast(
                        msg: "Please fill in the credentials to continue",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: "Incorrect Email Address/Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16,
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
