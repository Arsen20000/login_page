

import 'package:flutter/material.dart';
import 'package:login_page/home_page4.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('data'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text('Бул негизги',style: TextStyle(fontSize: 20)),
            const  SizedBox(width: 10,),
              Image.asset('assets/images/bg.jpg',  
                width: 200,
                   height: 350,
                    fit: BoxFit.fill,)
              ],
            ),
            const SizedBox(height: 80,),
 
ElevatedButton(onPressed:() {
  Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage4())));
},

 child:const Text('4-баракча',
    style: TextStyle(color: Colors.greenAccent)
 ))
          ],
        ),
      ),
    );
  }
}
