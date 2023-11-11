import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('home'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                const Text(
                  'this is an app',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Discover the world',
                  style: TextStyle(
                    backgroundColor: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'maldive.jpg',
                  height: 250,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('contact us'),
                ),
              ]),
            ),
          ),
        ),
      ),

       void contactUS(BuildContext context){
       showDialog(
       context: context,
        builder: (BuildContext context){
        return AlertDialog(

       title: Text('contact us'),
       content: Text('email me at kamranzafar4343@gmail.com'),
       actions: [
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          }
        child: Text('close'),
        ),
        ],

         );
        });
      }
    );
  }
}
