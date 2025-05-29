import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.white,),
          title: Text('LIstView Example', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.blue,   
        ),
        body: SafeArea(child: ListView(
          children:[
            ListTile(
              leading: Image.asset('assets/images/husky.jpeg', width: 80, height: 80,),
              title: Text('Husky'),
              subtitle: Text('Husky is a medium-sized working dog breed'),
            ),
            ListTile(
              leading: Image.asset('assets/images/german.jpeg', width: 80, height: 80,),
              title: Text('German Shepherd'),
              subtitle: Text('German Shepherds are large-sized working dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/golden.jpeg', width: 80, height: 80,),
              title: Text('Golden Retriever'),
              subtitle: Text('Golden Retrievers are friendly and intelligent dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/poodles.jpeg', width: 80, height: 80,),
              title: Text('Pug'),
              subtitle: Text('Pugs are small, compact dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/bulldog.jpeg', width: 80, height: 80,),
              title: Text('Bulldog'),
              subtitle: Text('Bulldogs are friendly and intelligent dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/labrador.jpeg', width: 80, height: 80,),
              title: Text('Labrador Retriever'),
              subtitle: Text('Labrador Retrievers are friendly and intelligent dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/beagles.jpeg', width: 80, height: 80,),
              title: Text('Beagle'),
              subtitle: Text('Beagles are small to medium-sized dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/Dachshunds.jpeg', width: 80, height: 80,),
              title: Text('Dachshund'),
              subtitle: Text('Dachshunds are small, elongated dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/boxers.jpeg', width: 80, height: 80,),
              title: Text('Boxer'),
              subtitle: Text('Boxers are medium-sized dogs with a strong build'),
            ),
            ListTile(
              leading: Image.asset('assets/images/chihuahua.jpeg', width: 80, height: 80,),
              title: Text('Chihuahua'),
              subtitle: Text('Chihuahuas are small dogs with a big personality'),
            ),
            ListTile(
              leading: Image.asset('assets/images/husky.jpeg', width: 80, height: 80,),
              title: Text('Siberian Husky'),
              subtitle: Text('Siberian Huskies are medium-sized working dogs'),
            ),
            ListTile(
              leading: Image.asset('assets/images/corgis.jpeg', width: 80, height: 80,),
              title: Text('Corgi'),
              subtitle: Text('Corgis are small, sturdy dogs with a playful nature'),
            ),
            ListTile(
              leading: Image.asset('assets/images/bichon.jpeg', width: 80, height: 80,),
              title: Text('Bichon Frise'),
              subtitle: Text('Bichon Frises are small, fluffy dogs'),
            ),
          ]

        ))
      )
    );
  }
}
