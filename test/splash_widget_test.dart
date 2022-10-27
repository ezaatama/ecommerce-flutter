import 'dart:async';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Splash screen timer', (WidgetTester tester) async {
    final Timer timer = Timer(const Duration(seconds: 2), () {
      print('It has been one minute');
    });
    await tester.binding.delayed(const Duration(seconds: 2));
  });
}
