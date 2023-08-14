import 'package:flutter/material.dart';
import 'package:projectsecond/loginpage.dart';
import 'package:projectsecond/signinpage.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        CircleAvatar(
        backgroundImage: NetworkImage(
        imageUrl!,
      ),),
               const SizedBox(height: 50),
                 const Text('NAME'),
              Text(name!),
               const SizedBox(height: 50),
               const Text('EMAIL'),
              Text(email!),
              ElevatedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context)
                  {return const LoginPage();}),
                    ModalRoute.withName('/'));
                },
                  child: const Text('Sign Out'),
                ),
        ]
      ),
    );
  }
}
