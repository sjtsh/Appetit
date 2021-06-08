import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Log{
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/log.txt');
  }

  Future<bool> readContents() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      if(contents == "1"){
        return true;
      }else{
        return false;
      }
    } catch (e) {
      return false;
    }

  }

  Future<File> writeContents(bool condition) async {
    final file = await _localFile;
    if(condition){
      return file.writeAsString("1");
    }else{
      return file.writeAsString("0");
    }
  }
}