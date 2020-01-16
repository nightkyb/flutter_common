import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () {
    expect(''.isNullOrEmpty, true);
    expect([].isNullOrEmpty, true);
    expect({}.isNullOrEmpty, true);
    expect('你'.isZh, true);
    expect('你好'.isZh, true);
    expect('a'.isZh, false);
    expect('ab'.isZh, false);
    expect('ab你好ab'.isZh, true);
    expect('a'.pairWith('b').first, 'a');
    expect('a'.pairWith('b').toList().length, 2);
  });
}
