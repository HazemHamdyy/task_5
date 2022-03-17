import 'package:flutter/material.dart';
import 'package:task5/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = 'energia powered';
  String enteredUsername = '';
  String password = '0000';
  String enteredPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('UserName ($username)'),
              TextField(
                onChanged: (txt) {
                  enteredUsername = txt;
                  print(enteredUsername);
                },
              ),
              Text('Password(0000)'),
              TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (pass) {
                  enteredPassword = pass;
                  print(enteredPassword);
                },
              ),
              TextButton(
                child: Container(
                  color: Colors.blueAccent,
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
                onPressed: () {
                  if (username == enteredUsername &&
                      password == enteredPassword) {
                    print('login passed');
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
