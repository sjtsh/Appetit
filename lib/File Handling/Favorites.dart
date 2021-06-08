import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Favorites {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/favorites.txt');
  }

  Future<List> readContents() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      List list = contents.split(" ");
      list.removeWhere((element) => element==" ");
      list.removeWhere((element) => element=="");
      return list;
    } catch (e) {
      return [];
    }

  }

  Future<File> writeContents(List value) async {
  final file = await _localFile;
    try{
      String contents = "";
      for (int i = 0; i < value.length-1; i++) {
        contents += value[i] + " ";
      }
      contents += value[value.length-1];
      return file.writeAsString(contents);
    }catch(e){
      return file.writeAsString("");
    }
  }

}
