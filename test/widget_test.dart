import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Hello World Test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(Container), findsOneWidget);
    expect(find.text("Hello World"), findsOne);
  });
}
