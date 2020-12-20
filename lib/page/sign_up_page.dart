import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../helper/validator.dart';

class SignUpPage extends StatefulWidget {
  static const ROUTE = '/sign_up';

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailFocusNode = FocusNode();
  final _passFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();

  final Map<String, String> _user = {
    'username': '',
    'password': '',
    'email': '',
  };
  bool areTermsAgreed = false;

  String _termsError = '';

  @override
  void dispose() {
    _passFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  void _saveForm(BuildContext context) async {
    final isValid = _form.currentState.validate();
    if (!areTermsAgreed) {
      setState(() {
        _termsError =
            'Please check the box to agree with out terms and conditions to continue.';
      });
    }
    if (isValid && areTermsAgreed) {
      final auth = Provider.of<Auth>(context, listen: false);
      auth.signUp(
        _user['username'],
        _user['password'],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _form,
        child: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/img/beach.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.person), onPressed: null),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_passFocusNode);
                        },
                        validator: (value) =>
                            value.isEmpty ? 'Please enter a username.' : null,
                        onSaved: (username) {
                          _user['username'] = username;
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.lock), onPressed: null),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: 'Password'),
                        enableSuggestions: false,
                        autocorrect: false,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        focusNode: _passFocusNode,
                        validator: (password) {
                          if (password.isEmpty) {
                            return 'Please enter a password.';
                          }
                          return null;
                        },
                        onFieldSubmitted: (_) => FocusScope.of(context)
                            .requestFocus(_emailFocusNode),
                        onSaved: (password) => _user['password'] = password,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.mail), onPressed: null),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: 'Email'),
                        focusNode: _emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) {
                          if (email.isEmpty) {
                            return 'Please enter an email address.';
                          } else if (Validator.validateEmail(email)) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                        onSaved: (email) => _user['email'] = email,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  // Radio(value: null, groupValue: null, onChanged: null),
                  Checkbox(
                      value: areTermsAgreed,
                      onChanged: (value) {
                        setState(() {
                          areTermsAgreed = !areTermsAgreed;
                          if (areTermsAgreed && _termsError.isNotEmpty) {
                            _termsError = '';
                          }
                        });
                      }),
                  RichText(
                    text: TextSpan(
                      text: 'I have accepted the',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' Terms & Condition',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                _termsError,
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {
                      _saveForm(context);
                    },
                    color: Color(0xFF00a79B),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
