import 'package:flutter/material.dart';
import 'package:flutter_widgets/functions/authFunctions.dart';

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
    String email = '';
    String password = '';
    String username = '';
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
              !isLogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Username is too small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          username = newValue!;
                        });
                      },
                      decoration: InputDecoration(hintText: 'Enter username'),
                      // ignore: dead_code
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: 'Enter email'),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid email';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  setState(() {
                    email = newValue!;
                  });
                },
              ),
              TextFormField(
                key: ValueKey('password'),
                obscureText: true,
                decoration: InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'Password is too small';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  setState(() {
                    password = newValue!;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      isLogin
                          ? signin(email, password)
                          : signup(email, password);
                    }
                  },
                  // ignore: dead_code
                  child: isLogin ? Text('Sign Up') : Text('Login'),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                // ignore: dead_code
                child: isLogin
                    ? Text('Dont\'t have account? Sign up')
                    : Text('Already Signed Up, Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
