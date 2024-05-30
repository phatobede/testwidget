import 'package:flutter/material.dart';
import 'package:flutter_application_1/animation_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'animation screen test',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: AnimationScreen(),
        ),
      );
      final containerFinder = find.byType(Container);
      expect(containerFinder, findsOneWidget);
      final container = tester.widget<Container>(containerFinder);
      expect(container.constraints!.minWidth, 50);
      expect(container.constraints!.maxHeight, 50);
      expect((container.decoration as BoxDecoration).color, Colors.blue);
      expect((container.decoration as BoxDecoration).borderRadius,
          BorderRadius.zero);
    },
  );
}
