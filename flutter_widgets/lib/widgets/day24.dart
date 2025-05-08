import 'package:flutter/material.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    bool isLogin = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Email / Password Authentication'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              !isLogin? TextFormField(
                key: ValueKey('username'),
                decoration: InputDecoration(hintText: 'Enter username'),
              // ignore: dead_code
              ) : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'Enter email'),
              ),
              TextFormField(
                key: ValueKey('password'),
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter Password'),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  // ignore: dead_code
                  child:isLogin? Text('Sign Up') : Text('Login'),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                // ignore: dead_code
                child: isLogin? Text('Dont\'t have account? Sign up') : Text('Already Signed Up, Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
