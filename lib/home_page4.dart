import 'package:flutter/material.dart';
class HomePage4 extends StatelessWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('home page 4'),),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text(' сатуу учун  ',style: TextStyle(fontSize: 20)),
            const  SizedBox(width: 5,),
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
