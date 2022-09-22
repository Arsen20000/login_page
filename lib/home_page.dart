import 'package:flutter/material.dart';
import 'package:login_page/home_page2.dart';
import 'package:passwordfield/passwordfield.dart';

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  String login = 'arsen@gmail.com';
  String password = '12345';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  String login = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/images/000.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (log) {
                login = log;
              },
              decoration: const InputDecoration(
                hintText: 'логин',
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            PasswordField(
              onChanged: (pas) {
                password = pas;
              },
              color: Colors.blue,
              passwordConstraint: '12',
              inputDecoration: PasswordDecoration(),
              hintText: 'password',
              border: PasswordBorder(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue.shade100,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 2, color: Colors.red.shade200),
                ),
              ),
              errorMessage: 'паролунузду туура жазыныз',
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (login == 'ars' && password == '12') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomPage2()),
                  );
                } else {}
              },
              child: const Text(
                'кийинки баракча',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
