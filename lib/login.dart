import 'package:flutter/material.dart';
import 'prefrences.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
             changeStatus(true);
              Navigator.pushNamed(context, '/logout');

            }, child: const Text('login')),
            const Center(
              child: Text('you need to login in'),
            ),
          ],
        ),
      ),
    );
  }
}
