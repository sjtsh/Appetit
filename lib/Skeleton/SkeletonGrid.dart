import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

class SkeletonGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: DialogueBoxState.isSelected[1] ? Color(0xff272727) : Color(0xffffffff),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: DialogueBoxState.isSelected[1]
                  ? Border.all(color: Colors.black, width: 1)
                  : Border.all(color: Colors.white),
              boxShadow: DialogueBoxState.isSelected[1]
                  ? const [
                BoxShadow(
                    color: Color(0xff000000), blurRadius: 10, offset: Offset(0, 10))
              ]
                  : const [
                BoxShadow(
                    color: Color(0x40000000), blurRadius: 10, offset: Offset(0, 10))
              ],
            ),),
        );
      },
    );
  }
}
