import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/home_page3.dart';

class HomPage2 extends StatefulWidget {
  const HomPage2({Key? key}) : super(key: key);

  @override
  State<HomPage2> createState() => _HomPage2State();
}

String login = '';
String password = '';

class _HomPage2State extends State<HomPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ЭКИНЧИ БАРАККА КЕЛДИ'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/000.jpg',
                  width: 250,
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 3),

              Text(
                'Ardakbek uulu Arsen',
                style: GoogleFonts.akayaKanadaka(
                    textStyle: const TextStyle(
                  fontSize: 40,
                )),
              ),
              const SizedBox(
                height: 40,
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage3()));
                  },
                  child: const Text('3-баракча',
                      style: TextStyle(color: Colors.greenAccent)))

              //     Container(
              //   padding:const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              //   child:const TextField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(),
              //       hintText: '+ 999 999 999',
              //     ),
              //   ),
              //  ),
              //     const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(),
              //       hintText: 'arsen@gmail.com',
              //     ),
              //   ),

              // ),
              //  ElevatedButton(
              //         onPressed: () {
              //           if (login == 'arsen@gmail.com' && password == '12345') {
              //             Navigator.push(
              //               context,
              //                MaterialPageRoute(builder: (context) => const HomPage2()),
              //             );
              //           } else {}
              //         },
              //          child: const Text(
              //           'кийинки баракча',
              //             style: TextStyle(color: Colors.black),
              //         ),
              //     ),
            ],
          ),
        ));
  }
}
