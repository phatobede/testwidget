import 'package:flutter/material.dart';

import 'user_model.dart';
import 'user_repository.dart';

class HomeScreen extends StatefulWidget {
  final Future<List<User>> futureUsers;
  const HomeScreen({super.key, required this.futureUsers});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserReponsitory userReponsitory = UserReponsitory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Users',
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        body: FutureBuilder<List<User>>(
          future: widget.futureUsers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final user = snapshot.data![index];
                  return ListTile(
                    title: Text(
                      user.name,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    subtitle: Text(user.email,
                        style:
                            const TextStyle(fontSize: 30, color: Colors.black)),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}

@override
Widget build(BuildContext context) {
  return const Placeholder();
}
