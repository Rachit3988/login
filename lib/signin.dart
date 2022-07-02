import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const SignInLayout(),
    );
  }
}

class SignInLayout extends StatefulWidget {
  const SignInLayout({Key? key}) : super(key: key);

  @override
  State<SignInLayout> createState() => _SignInLayoutState();
}

class _SignInLayoutState extends State<SignInLayout> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              'images/signin.png',
              width: 300,
              height: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(style: TextStyle(fontSize: 30), 'Introduce yourself'),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'First Name'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Last Name'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: CupertinoSwitch(
                  activeColor: Colors.blue,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text('Subscribe to our News Letter.'),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(onPressed: () {}, child: Text('Sign Up'))),
        ],
      ),
    );
  }
}
