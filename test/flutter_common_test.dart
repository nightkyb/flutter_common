import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('library test', () {
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
    expect('a'.pairWith('b') == 'a'.pairWith('b'), true);
    expect(1.pairWith('b') == 2.pairWith('b'), false);

    expect('2020-01-17 22:57:33'.formatDate('MM-dd HH:mm'), '01-17 22:57');
    expect(DateTime.parse('2020-01-17 22:57').format('MM-dd HH:mm'),
        '01-17 22:57');
    expect(DateTime.now().isToday, true);
  });
}
