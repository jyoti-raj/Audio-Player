import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(X1());
}

class X1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player Application'),
          leading: Icon(
            Icons.music_note,
            color: Colors.white,
            size: 30,
          ),
        ),
        backgroundColor: Colors.blue.shade100,
        body: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                  child: FlatButton(
                      onPressed: () {
                        print('skip previous button');
                        Fluttertoast.showToast(
                            msg: 'No futher song is added',
                            toastLength: Toast.LENGTH_SHORT,
                            backgroundColor: Colors.blueAccent,
                            gravity: ToastGravity.BOTTOM);
                      },
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.black,
                      ))),
              Card(
                  child: FlatButton(
                      onPressed: () {
                        print('This is play arr0w');
                        Card(
                          child: Icon(
                            Icons.pause,
                            color: Colors.black,
                          ),
                        );
                        var audio = AudioCache();
                        audio.play('sukoon mila.mp3');
                      },
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ))),
              Card(
                  child: FlatButton(
                onPressed: () {
                  print('skip next button');
                  Fluttertoast.showToast(
                      msg: 'No futher song is added',
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.blueAccent,
                      gravity: ToastGravity.BOTTOM);
                },
                child: Icon(Icons.skip_next, color: Colors.black),
              )),
            ],
          ),
        ),
        // Card(
        //       child: FlatButton(
        //           onPressed: () => print('Shuffle button'),
        //           child: Icon(
        //             Icons.shuffle,
        //             color: Colors.black,
        //           )),
        //     ),
      ),
    );
  }
}
