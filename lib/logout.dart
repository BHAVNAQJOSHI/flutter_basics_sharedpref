import 'package:flutter/material.dart';
import 'package:login_back/prefrences.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async {
              changeStatus(false);
              Navigator.pushNamed(context, '/');

            }, child: const Text('logout')),
            const Center(
              child: Text('u are already logged in. press to logout'),
            ),
          ],
        ),
      ),
    );
  }
}
