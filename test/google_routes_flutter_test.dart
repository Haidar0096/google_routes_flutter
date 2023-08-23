import 'package:test/test.dart';

void main() {
  group(
    'A group of tests',
    () => test('First Test', () => expect(1 == 1, isTrue)),
  );
}
