import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('exports supported analysis options', () {
    final file = File('analysis_options.yaml');

    expect(file.existsSync(), isTrue);

    final contents = file.readAsStringSync();

    expect(contents, contains('strict-casts: true'));
    expect(contents, isNot(contains('avoid_returning_null_for_future')));
  });
}
