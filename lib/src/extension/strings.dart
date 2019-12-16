import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

/// Created by nightkyb at 2019/12/15 0:05
extension StringExt on String {
  /// Returns true if this string is either null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;

  /// Returns true if this string is either empty or is solely made of whitespace
  /// characters (as defined by [String.trim]).
  bool get isBlank => this.trim().isEmpty;

  /// Returns true if this string is neither empty nor is solely made of whitespace
  /// characters.
  ///
  /// See also:
  ///
  ///  * [isBlank]
  bool get isNotBlank => this.trim().isNotEmpty;

  /// Returns true if this string is either null, empty or is solely made of whitespace
  /// characters (as defined by [String.trim]).
  bool get isNullOrBlank => this == null || this.trim().isEmpty;

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
  bool get isMobilePhone => RegExp(r'^1[3-9]\d{9}$').hasMatch(this);

  /// Returns true if this string is an email address.
  bool get isEmail =>
      RegExp(r'^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$').hasMatch(this);

  /// Returns true if this string is a url.
  bool get isUrl => RegExp(r'^[a-zA-Z]+://[^\s]*$').hasMatch(this);

  /// Returns true if this string contains Chinese character.
  bool get isZh => RegExp(r'[\u4e00-\u9fa5]').hasMatch(this);
}
