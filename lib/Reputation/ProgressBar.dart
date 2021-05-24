import 'package:appetit/DATABASE/Content.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressBar extends StatelessWidget {

  final bool rep;

  ProgressBar(this.rep);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
    color: Color(0xff272727),
    borderRadius: BorderRadius.circular(100),
    ),
      child: SfRadialGauge(axes: [
        RadialAxis(
          minimum: 0,
          maximum: 1000,
          showLabels: false,
          showTicks: false,
          startAngle: 270,
          endAngle: 270,
          axisLineStyle: AxisLineStyle(
            thickness: 0.5,
            color: const Color(0xff494949),
            thicknessUnit: GaugeSizeUnit.factor,
          ),
          pointers: <GaugePointer>[
            RangePointer(
              gradient: SweepGradient(colors: [
                rep? Color(0xbfffdb7d): Color(0xbf00D1FF),
                rep? Color(0xbfadd8a7): Color(0xbf4994FF),
                rep? Color(0xbf56d4d3): Color(0xbfAB42FF),
                rep? Color(0xbf00d1ff): Color(0xbfFA00FF),
              ],),
              value: rep? rp : 651,
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
