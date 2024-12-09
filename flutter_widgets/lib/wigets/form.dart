import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});
  final _formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String password = '';
  String email = '';
  trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                onSaved: (value) {
                  firstname = value.toString();
                },
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First name field cannot be empty';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your first name',
                ),
              ),
              TextFormField(
                onSaved: (value) {
                  lastname = value.toString();
                },
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last name field cannot be empty';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your last name',
                ),
              ),
              TextFormField(
                obscureText: true,
                onSaved: (value) {
                  password = value.toString();
                },
                validator: (value) {
                  if (value.toString().length <= 5) {
                    return 'Minimum lenght of password should be 6';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
              TextFormField(
                onSaved: (value) {
                  email = value.toString();
                },
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email field cannot be empty';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
                ),
              ),
              TextButton(
                onPressed: () {
                  trySubmit();
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
