
import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class TimerWid extends StatefulWidget {
  @override
  State<TimerWid> createState() => TimerState();
}

class TimerState extends State<TimerWid> {
  static int seconds = 0;
  static int minutes = timeRemaining;
  static var timer;
  var oneSec = Duration(seconds: 1);
  
  void startTimer() {
    if (minutes > 0) {
      seconds += minutes * 60;
    }

    if (seconds > 60) {
      minutes = (seconds / 60).floor();
      seconds -= (minutes * 60);
    }

    timer = Timer.periodic(
      oneSec,
      (timer) {
        if(mounted)setState(() {
          if (seconds > 0) {
            seconds--;
          } else {
            if (minutes > 0) {
              seconds = 59;
              minutes--;
            }
            else{
            timer.cancel();
            print("timer complete");
            }
          }
        });
      },
    );
  }

  static void stopTimer(){
    seconds = 0;
    minutes = timeRemaining;
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          "estimated arrival",
          style: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 20,
          ),
        ),
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              Color(0xff00D1FF),
              Color(0xffFA00FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
          child: Text(
            seconds>9 ? "$minutes:$seconds min" : "$minutes:0$seconds min",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}