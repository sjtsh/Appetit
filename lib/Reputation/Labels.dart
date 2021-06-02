
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String label;
  final String value;

  Labels(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20),
            child: Text(label,
                style: TextStyle(
                  color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
                  fontSize: 18,
                )),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 8),
          child: Text(
            value,
            style: TextStyle(
              color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
              fontSize: 18,
            ),
          ),
        )),
      ],
    );
  }
}
