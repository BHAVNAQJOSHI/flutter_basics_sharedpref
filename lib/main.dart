import 'package:flutter/material.dart';
import 'package:login_back/prefrences.dart';
import 'login.dart';
import 'logout.dart';

void main() {
  runApp(const MyApp());
}

//method - 1
// class MyApp extends StatefulWidget {
//
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   bool _isLoggedIn = false;
//   @override
//   void initState() {
//     super.initState();
//
//     if(_isLoggedIn==false){
//       getStatus().then(
//               (bool b) => setState(() {_isLoggedIn = b;})
//       );
//
//     }
//
//
//   }
//   @override
//   Widget build(BuildContext context)  {
//    print('build is called $_isLoggedIn');
//     bool isLoggedIn = _isLoggedIn;
//         return MaterialApp(
//
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           initialRoute: isLoggedIn ? '/logout' : '/',
//           routes: {
//             '/': (context) => LoginScreen(),
//             '/logout': (context) => LogoutScreen(),
//           },
//         );
//
//   }
// }
//to make it work intialize with null and put null check





//method 2  future builder

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool storedFuture;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: checkUserLoggdIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute:  storedFuture? '/logout' : '/',
                 routes: {
                    '/': (context) => LoginScreen(),
                    '/logout': (context) => LogoutScreen(),
                  },
            );
          } else {
            return Container(color: Colors.blueGrey);
          }


        }
        );
  }
  Future<void> checkUserLoggdIn() async{
    storedFuture = await getStatus();
  }

}