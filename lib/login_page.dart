import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kalkulator",
          style: TextStyle(color: Color.fromRGBO(255, 0, 0, 0.863)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(hintText: "username"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(hintText: "password"),
                obscureText: true,
              ),
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: ElevatedButton(onPressed: null, child: Text('Login'))),
            Spacer(),
            Container(
                child: TextButton(
                    onPressed: null, child: Text('Dont have Account?'))),
          ],
        ),
      ),
    );
  }
}
