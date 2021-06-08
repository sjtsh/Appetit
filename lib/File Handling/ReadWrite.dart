import 'dart:io';

import 'package:path_provider/path_provider.dart';

class ReadWrite {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/contents.txt');
  }

  Future<List> readContents() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      print(_localPath);
      List list = contents.split(" ");
      return list;
    } catch (e) {
      return ["0.0","0.0","0.0"];
    }

  }

  Future<File> writeContents(String balance, String rp, String totalRP) async {
    final file = await _localFile;

    return file.writeAsString(balance + " " + rp + " " + totalRP);
  }
}