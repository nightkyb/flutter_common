import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

/// Created by nightkyb at 2019/12/15 0:05
extension StringExt on String {
  /// Returns true if this string is either null or empty.
  bool get isNullOrEmpty => this == null || this.isEmpty;

  /// Returns true if this string is either empty or is solely made of
  /// whitespace characters (as defined by [String.trim]).
  bool get isBlank => this.trim().isEmpty;

  /// Returns true if this string is neither empty nor is solely made of
  /// whitespace characters.
  ///
  /// See also:
  ///
  ///  * [isBlank]
  bool get isNotBlank => this.trim().isNotEmpty;

  /// Returns true if this string is either null, empty or is solely made of
  /// whitespace characters (as defined by [String.trim]).
  bool get isNullOrBlank => this == null || this.trim().isEmpty;

  /// Returns this string if it's not empty
  /// or the result of calling [defaultValue] function if the string is empty.
  String ifEmpty(String defaultValue()) => this.isEmpty ? defaultValue() : this;

  /// Returns this string if it is not empty and doesn't consist solely of whitespace characters,
  /// or the result of calling [defaultValue] function otherwise.
  String ifBlank(String defaultValue()) => this.isBlank ? defaultValue() : this;

  String ifNullOrEmpty(String defaultValue()) =>
      this.isNullOrEmpty ? defaultValue() : this;

  String ifNullOrBlank(String defaultValue()) =>
      this.isNullOrBlank ? defaultValue() : this;

  /// Parses the string as an [int] number and returns the result.
  int toInt() => int.parse(this);

  /// Parses the string as an [int] number and returns the result or `null` if
  /// the string is not a valid representation of a number.
  int toIntOrNull() => int.tryParse(this);

  /// Parses the string as a [double] number and returns the result.
  double toDouble() => double.parse(this);

  /// Parses the string as an [double] number and returns the result or `null`
  /// if the string is not a valid representation of a number.
  double toDoubleOrNull() => double.tryParse(this);

  /// Converts to utf8.
  List<int> toUtf8() => utf8.encode(this);

  /// Converts to utf16.
  List<int> toUtf16() => this.codeUnits;

  /// Encode md5.
  String get md5 => crypto.md5.convert(toUtf8()).toString();

  /// Encode base64.
  String get base64 => base64Encode(toUtf8());

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
