import 'package:flutter/material.dart';
import 'package:projectsecond/screen_one.dart';
import 'package:projectsecond/signinpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignIn"),
      ),
      body: Column(
        children: [
          _signInButton(),
        ],
      ),
    );
  }

  Widget _signInButton() {
    return OutlinedButton(
        onPressed: () {
          signInWithGoogle().then((result)
          {
            if (result != null)
            {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ScreenOne();
                  },));
            }
          }
            );
          },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image:
            AssetImage("assets/images/google_logo.png"),height: 30,),
            Text('Signin with Google'),
          ],
        ),
      ),
    );

  }
}