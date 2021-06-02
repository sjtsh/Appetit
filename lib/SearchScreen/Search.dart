
import 'package:appetit/DialogueBox/DialogueBox.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  final Function _changeResults;

  Search( this._changeResults);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
                width: 1,
              ))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: FocusNode(),
              keyboardAppearance: Brightness.dark,
              cursorColor: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
              textCapitalization: TextCapitalization.words,
              maxLines: 1,
              enableSuggestions: true,
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                hintStyle: TextStyle(
                  color: DialogueBoxState.isSelected[1] ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                ),
              ),
              style: TextStyle(
                color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
              ),
              onChanged: (String text){_changeResults(text);},
              onSubmitted: (String text){},
            ),
          ),
          Icon(
            Icons.search_outlined,
            color: DialogueBoxState.isSelected[1] ? Colors.white : Colors.black,
          )
        ],
      ),
    );
  }
}
