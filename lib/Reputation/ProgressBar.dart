import 'dart:async';

import 'package:appetit/DATABASE/Content.dart';
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:appetit/Track/Timer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressBar extends StatefulWidget {
  final bool rep;

  ProgressBar(this.rep);

  @override
  State<ProgressBar> createState() => ProgressBarState();
}

class ProgressBarState extends State<ProgressBar> {

  var minutes = TimerState.minutes;
  var seconds = TimerState.seconds;
  static var timer;
  var oneSec = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      oneSec,
      (timer) {
        if(mounted)setState(() {
          timeRemaining = timeRemaining;
          minutes = TimerState.minutes;
          seconds = TimerState.seconds;
          if(minutes + seconds == 0){
            timer.cancel();
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffECFAFF),
        borderRadius: BorderRadius.circular(100),
      ),
      child: SfRadialGauge(axes: [
        RadialAxis(
          minimum: 0,
          maximum: widget.rep ? 1000 : (timeRemaining * 60),
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          axisLineStyle: AxisLineStyle(
            thickness: 0.5,
            color: DialogueBoxState.isSelected[1]? Color(0xff494949): Colors.white,
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: <GaugePointer>[
            RangePointer(
              gradient: SweepGradient(
                colors: [
                  widget.rep ? Color(0xbfffdb7d) : Color(0xbf00D1FF),
                  widget.rep ? Color(0xbfadd8a7) : Color(0xbf4994FF),
                  widget.rep ? Color(0xbf56d4d3) : Color(0xbfAB42FF),
                  widget.rep ? Color(0xbf00d1ff) : Color(0xbfFA00FF),
                ],
              ),
              value:
                  widget.rep ? rp : (timeRemaining * 60) - ((minutes * 60) + seconds) + 0.0,
              width: 0.5,
              sizeUnit: GaugeSizeUnit.factor,
              animationType: AnimationType.bounceOut,
              enableAnimation: true,
              animationDuration: 2000,
            ),
          ],
        )
      ]),
    );
  }
}
