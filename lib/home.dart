import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/mainscreen.dart';

class Login_with_Validation extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                  child: Text(
                    "Login Page",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "UserName", border: OutlineInputBorder()),
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Enter a valid email !!!";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),)),
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Password length should be greater than 6";
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => mainscreen()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "Invalid username / Password",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: const Text("LOGIN")),
            )
          ],
        ),
      ),
    );
  }
}