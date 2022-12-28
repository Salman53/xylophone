import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey( {required Color color ,  required int soundNumber}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        }, child: Text("Press"),
     ),
  );

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color:Colors.red , soundNumber: 1),
                buildKey(color:Colors.orange , soundNumber: 2),
                buildKey(color:Colors.blue , soundNumber: 3),
                buildKey(color:Colors.green , soundNumber: 4),
                buildKey(color:Colors.purple , soundNumber: 5),
                buildKey(color:Colors.pink , soundNumber: 6),
                buildKey(color:Colors.yellow , soundNumber: 7),



            ]
    ),
          ),
        )
    );
  }
}