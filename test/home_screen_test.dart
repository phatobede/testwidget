import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Display List of users with title as name and subtitle as email ',
    (tester) async {
      final users = [
        User(id: 1, name: 'Datchin', email: 'datchoigai@gmail.com'),
        User(id: 2, name: 'nhatlon', email: 'nhatcubu@gmail.com'),
      ];

      Future<List<User>> mockFetchUser() async {
        return Future.delayed(const Duration(seconds: 1), () => users);
      }

      await tester.pumpWidget(
        MaterialApp(
          home: HomeScreen(
            futureUsers: mockFetchUser(),
          ),
        ),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      await tester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
      expect(find.byType(ListTile), findsNWidgets(users.length));

      for (final user in users) {
        expect(find.text(user.name), findsOneWidget);
        expect(find.text(user.email), findsOneWidget);
      }
    },
  );
}
