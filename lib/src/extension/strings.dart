import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

/// Created by nightkyb at 2019/12/15 0:05
extension StringExt on String {
  /// Returns true if this string is null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;

  /// Encode md5.
  String get md5 {
    final content = utf8.encode(this);
    final digest = crypto.md5.convert(content);
    return digest.toString(); // 其实就是 hex.encode(digest.bytes)
  }

  /// Encode base64.
  String get base64 {
    final content = utf8.encode(this);
    final digest = base64Encode(content);
    return digest;
  }

  /// Decode base64.
  String get decodeBase64 => String.fromCharCodes(base64Decode(this));

  /// Returns true if this string is a mobile phone number.
  bool get isMobilePhone => RegExp("^1[3-9]\\d{9}\$").hasMatch(this);

  /// Returns true if this string is an email address.
  bool get isEmail =>
      RegExp("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$")
          .hasMatch(this);

  /// Returns true if this string is a url.
  bool get isUrl => RegExp("^[a-zA-Z]+://[^\\s]*\$").hasMatch(this);
}
