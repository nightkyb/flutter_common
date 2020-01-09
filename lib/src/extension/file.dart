import 'dart:io';

import 'package:path/path.dart' as path_helper;

/// Created by nightkyb at 2020/1/8 10:25
extension FileExt on File {
  /// Appends an array of [bytes] to the content of this file.
  /* Future<void> appendBytes(List<int> bytes) async {
    var raf = await open(mode: FileMode.writeOnlyAppend);
    await raf.writeFrom(bytes);
    await raf.close();
  }*/

  /// Appends a [string] to the content of this file using UTF-8 or the
  /// specified [encoding].
  /*Future<void> appendString(String string, {Encoding encoding = utf8}) async {
    var raf = await open(mode: FileMode.writeOnlyAppend);
    await raf.writeString(string, encoding: encoding);
    await raf.close();
  }*/
}

extension FileSystemEntityExt on FileSystemEntity {
  String get name => path_helper.basename(path);

  String get nameWithoutExtension => path_helper.basenameWithoutExtension(path);

  String get dirName => path_helper.dirname(path);

  String get extension => path_helper.extension(path);

  String get rootPrefix => path_helper.rootPrefix(path);

  bool isWithin(Directory parent) => path_helper.isWithin(parent.path, path);
}
